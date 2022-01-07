
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENCODED_SIZE (int) ;
 int EVP_DecodeBlock (unsigned char*,unsigned char*,int) ;
 int EVP_EncodeBlock (unsigned char*,unsigned char*,int) ;
 int EVP_md5 () ;
 int HMAC (int ,char const*,int,unsigned char*,int,unsigned char*,int *) ;
 int die (char*,...) ;
 char hexchar (unsigned char) ;
 int strlen (char const*) ;
 char* xmalloc (int) ;
 char* xmallocz (int ) ;
 char* xstrfmt (char*,char const*,char*) ;

__attribute__((used)) static char *cram(const char *challenge_64, const char *user, const char *pass)
{
 int i, resp_len, encoded_len, decoded_len;
 unsigned char hash[16];
 char hex[33];
 char *response, *response_64, *challenge;





 encoded_len = strlen(challenge_64);
 challenge = xmalloc(encoded_len);
 decoded_len = EVP_DecodeBlock((unsigned char *)challenge,
          (unsigned char *)challenge_64, encoded_len);
 if (decoded_len < 0)
  die("invalid challenge %s", challenge_64);
 if (!HMAC(EVP_md5(), pass, strlen(pass), (unsigned char *)challenge, decoded_len, hash, ((void*)0)))
  die("HMAC error");

 hex[32] = 0;
 for (i = 0; i < 16; i++) {
  hex[2 * i] = hexchar((hash[i] >> 4) & 0xf);
  hex[2 * i + 1] = hexchar(hash[i] & 0xf);
 }


 response = xstrfmt("%s %s", user, hex);
 resp_len = strlen(response);

 response_64 = xmallocz(ENCODED_SIZE(resp_len));
 encoded_len = EVP_EncodeBlock((unsigned char *)response_64,
          (unsigned char *)response, resp_len);
 if (encoded_len < 0)
  die("EVP_EncodeBlock error");
 return (char *)response_64;
}
