
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int cf_aes_context ;


 int TEST_CHECK (int) ;
 int cf_aes_decrypt (int *,int *,int *) ;
 int cf_aes_encrypt (int *,int *,int *) ;
 int cf_aes_finish (int *) ;
 int cf_aes_init (int *,int *,size_t) ;
 scalar_t__ memcmp (int *,int *,int) ;
 size_t unhex (int *,int,char const*) ;

__attribute__((used)) static void vector(const char *input, const char *output,
                   const char *key)
{
  uint8_t keybuf[32], inbuf[16], outbuf[16], tmp[16];
  size_t nkey = sizeof keybuf;
  cf_aes_context ctx;

  nkey = unhex(keybuf, 32, key);
  unhex(inbuf, 16, input);
  unhex(outbuf, 16, output);

  cf_aes_init(&ctx, keybuf, nkey);
  cf_aes_encrypt(&ctx, inbuf, tmp);
  TEST_CHECK(memcmp(tmp, outbuf, 16) == 0);

  cf_aes_decrypt(&ctx, outbuf, tmp);
  TEST_CHECK(memcmp(tmp, inbuf, 16) == 0);
  cf_aes_finish(&ctx);
}
