
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CRYPTO_MAX_ALG_NAME ;
 int memcpy (char*,char const*,int) ;
 char* strchr (char const*,char) ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static bool parse_cipher_name(char *essiv_cipher_name, const char *cra_name)
{
 const char *p, *q;
 int len;


 p = strrchr(cra_name, '(');
 if (!p++)
  return 0;


 q = strchr(p, ')');
 if (!q)
  return 0;

 len = q - p;
 if (len >= CRYPTO_MAX_ALG_NAME)
  return 0;

 memcpy(essiv_cipher_name, p, len);
 essiv_cipher_name[len] = '\0';
 return 1;
}
