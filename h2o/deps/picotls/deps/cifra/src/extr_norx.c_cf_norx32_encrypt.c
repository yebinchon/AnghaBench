
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int norx32_ctx ;


 int do_header (int *,int const*,size_t) ;
 int do_trailer (int *,int const*,size_t) ;
 int encrypt_body (int *,int const*,int *,size_t) ;
 int get_tag (int *,int *) ;
 int init (int *,int const*,int const*) ;
 int mem_clean (int *,int) ;

void cf_norx32_encrypt(const uint8_t key[16],
                       const uint8_t nonce[8],
                       const uint8_t *header, size_t nheader,
                       const uint8_t *plaintext, size_t nbytes,
                       const uint8_t *trailer, size_t ntrailer,
                       uint8_t *ciphertext,
                       uint8_t tag[16])
{
  norx32_ctx ctx;

  init(&ctx, key, nonce);
  do_header(&ctx, header, nheader);
  encrypt_body(&ctx, plaintext, ciphertext, nbytes);
  do_trailer(&ctx, trailer, ntrailer);
  get_tag(&ctx, tag);

  mem_clean(&ctx, sizeof ctx);
}
