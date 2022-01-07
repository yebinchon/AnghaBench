
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int norx32_ctx ;


 int decrypt_body (int *,int const*,int *,size_t) ;
 int do_header (int *,int const*,size_t) ;
 int do_trailer (int *,int const*,size_t) ;
 int get_tag (int *,int *) ;
 int init (int *,int const*,int const*) ;
 int mem_clean (int *,int) ;
 int mem_eq (int *,int const*,int) ;

int cf_norx32_decrypt(const uint8_t key[16],
                      const uint8_t nonce[8],
                      const uint8_t *header, size_t nheader,
                      const uint8_t *ciphertext, size_t nbytes,
                      const uint8_t *trailer, size_t ntrailer,
                      const uint8_t tag[16],
                      uint8_t *plaintext)
{
  norx32_ctx ctx;
  uint8_t ourtag[16];

  init(&ctx, key, nonce);
  do_header(&ctx, header, nheader);
  decrypt_body(&ctx, ciphertext, plaintext, nbytes);
  do_trailer(&ctx, trailer, ntrailer);
  get_tag(&ctx, ourtag);

  int err = 0;

  if (!mem_eq(ourtag, tag, sizeof ourtag))
  {
    err = 1;
    mem_clean(plaintext, nbytes);
    mem_clean(ourtag, sizeof ourtag);
  }

  mem_clean(&ctx, sizeof ctx);
  return err;
}
