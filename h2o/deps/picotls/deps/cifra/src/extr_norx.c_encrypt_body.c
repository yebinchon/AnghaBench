
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int partial ;
typedef int norx32_ctx ;


 int DOMAIN_PAYLOAD ;
 size_t RATE_BYTES ;
 int body_block_encrypt (int *,int const*,int*) ;
 int memcpy (int*,int const*,size_t) ;
 int memset (int*,int ,int) ;
 int switch_domain (int *,int ) ;

__attribute__((used)) static void encrypt_body(norx32_ctx *ctx,
                         const uint8_t *plain, uint8_t *cipher, size_t nbytes)
{
  if (nbytes == 0)
    return;


  while (nbytes >= RATE_BYTES)
  {
    switch_domain(ctx, DOMAIN_PAYLOAD);
    body_block_encrypt(ctx, plain, cipher);
    plain += RATE_BYTES;
    cipher += RATE_BYTES;
    nbytes -= RATE_BYTES;
  }


  uint8_t partial[RATE_BYTES];
  memset(partial, 0, sizeof partial);
  memcpy(partial, plain, nbytes);
  partial[nbytes] ^= 0x01;
  partial[sizeof(partial) - 1] ^= 0x80;

  switch_domain(ctx, DOMAIN_PAYLOAD);
  body_block_encrypt(ctx, partial, partial);

  memcpy(cipher, partial, nbytes);
}
