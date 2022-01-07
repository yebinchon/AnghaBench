
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int * s; } ;
typedef TYPE_1__ norx32_ctx ;


 int DOMAIN_PAYLOAD ;
 size_t RATE_BYTES ;
 size_t RATE_WORDS ;
 size_t WORD_BYTES ;
 int body_block_decrypt (TYPE_1__*,int const*,int*,size_t,size_t) ;
 int read32_le (int*) ;
 int switch_domain (TYPE_1__*,int ) ;
 int undo_padding (TYPE_1__*,size_t) ;
 int write32_le (int ,int*) ;

__attribute__((used)) static void decrypt_body(norx32_ctx *ctx,
                         const uint8_t *cipher, uint8_t *plain, size_t nbytes)
{
  if (nbytes == 0)
    return;


  while (nbytes >= RATE_BYTES)
  {
    switch_domain(ctx, DOMAIN_PAYLOAD);
    body_block_decrypt(ctx, cipher, plain, 0, RATE_WORDS);
    plain += RATE_BYTES;
    cipher += RATE_BYTES;
    nbytes -= RATE_BYTES;
  }


  size_t offset = 0;
  switch_domain(ctx, DOMAIN_PAYLOAD);

  undo_padding(ctx, nbytes);


  while (nbytes >= WORD_BYTES)
  {
    body_block_decrypt(ctx, cipher, plain, offset, offset + 1);
    plain += WORD_BYTES;
    cipher += WORD_BYTES;
    nbytes -= WORD_BYTES;
    offset += 1;
  }


  uint8_t tmp[WORD_BYTES];
  write32_le(ctx->s[offset], tmp);

  for (size_t i = 0; i < nbytes; i++)
  {
    uint8_t c = cipher[i];
    plain[i] = tmp[i] ^ c;
    tmp[i] = c;
  }

  ctx->s[offset] = read32_le(tmp);
}
