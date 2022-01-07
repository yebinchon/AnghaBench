
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const uint8_t ;
typedef int cf_poly1305 ;
typedef int const cf_chacha20_ctx ;


 int ENCRYPT ;
 int FAILURE ;
 int PADLEN (size_t) ;
 int SUCCESS ;
 int cf_chacha20_cipher (int const*,int const*,int const*,size_t) ;
 int cf_chacha20_init_custom (int const*,int const*,int,int const*,int) ;
 int cf_poly1305_finish (int *,int const*) ;
 int cf_poly1305_init (int *,int const*,int const*) ;
 int cf_poly1305_update (int *,int const*,int) ;
 int mem_clean (int const*,int) ;
 scalar_t__ mem_eq (int const*,int const*,int) ;
 int memcpy (int const*,int const*,int) ;
 int write64_le (size_t,int const*) ;

__attribute__((used)) static int process(const uint8_t key[32],
                   const uint8_t nonce[12],
                   const uint8_t *header, size_t nheader,
                   const uint8_t *input, size_t nbytes,
                   uint8_t *output,
                   int mode,
                   uint8_t tag[16])
{



  uint8_t fullnonce[16] = { 0 };
  memcpy(fullnonce + 4, nonce, 12);

  uint8_t polykey[32] = { 0 };
  cf_chacha20_ctx chacha;
  cf_chacha20_init_custom(&chacha, key, 32, fullnonce, 4);
  cf_chacha20_cipher(&chacha, polykey, polykey, sizeof polykey);


  cf_poly1305 poly;
  cf_poly1305_init(&poly, polykey, polykey + 16);
  mem_clean(polykey, sizeof polykey);


  cf_chacha20_cipher(&chacha, polykey, polykey, sizeof polykey);
  mem_clean(polykey, sizeof polykey);



  uint8_t padbuf[16] = { 0 };




  cf_poly1305_update(&poly, header, nheader);
  cf_poly1305_update(&poly, padbuf, (16 - ((nheader) & 0xf)));


  if (mode == ENCRYPT)
  {


    cf_chacha20_cipher(&chacha, input, output, nbytes);
    cf_poly1305_update(&poly, output, nbytes);
  } else {


    cf_poly1305_update(&poly, input, nbytes);
  }


  cf_poly1305_update(&poly, padbuf, (16 - ((nbytes) & 0xf)));


  write64_le(nheader, padbuf);
  write64_le(nbytes, padbuf + 8);
  cf_poly1305_update(&poly, padbuf, sizeof padbuf);



  if (mode == ENCRYPT)
  {
    cf_poly1305_finish(&poly, tag);
    mem_clean(&chacha, sizeof chacha);
    return SUCCESS;
  }



  uint8_t checktag[16];
  cf_poly1305_finish(&poly, checktag);

  if (mem_eq(checktag, tag, sizeof checktag))
  {
    cf_chacha20_cipher(&chacha, input, output, nbytes);
    mem_clean(&chacha, sizeof chacha);
    mem_clean(checktag, sizeof checktag);
    return SUCCESS;
  } else {
    mem_clean(output, nbytes);
    mem_clean(&chacha, sizeof chacha);
    mem_clean(checktag, sizeof checktag);
    return FAILURE;
  }
}
