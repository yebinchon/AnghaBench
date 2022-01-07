
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int sha1nfo ;


 int* sha1_final_hmac (int *) ;
 int sha1_init_hmac (int *,int*,int ) ;
 int sha1_write (int *,char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static void s3_sign(const char *key, const char *data, char out[29])
{
 const char *b64tab = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
 const uint8_t *digest;
 int i, j, rest;
 sha1nfo s;
 sha1_init_hmac(&s, (uint8_t*)key, strlen(key));
 sha1_write(&s, data, strlen(data));
 digest = sha1_final_hmac(&s);
 for (j = i = 0, rest = 8; i < 20; ++j) {
  if (rest <= 6) {
   int next = i < 19? digest[i+1] : 0;
   out[j] = b64tab[(int)(digest[i] << (6-rest) & 0x3f) | next >> (rest+2)], ++i, rest += 2;
  } else out[j] = b64tab[(int)digest[i] >> (rest-6) & 0x3f], rest -= 6;
 }
 out[j++] = '='; out[j] = 0;
}
