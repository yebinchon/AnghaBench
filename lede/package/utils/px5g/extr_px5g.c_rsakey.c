
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_pk_context ;


 scalar_t__ atoi (char*) ;
 int gen_key (int *,unsigned int,int,int) ;
 int mbedtls_pk_free (int *) ;
 int strcmp (char*,char*) ;
 int write_key (int *,char*,int) ;

int rsakey(char **arg)
{
 mbedtls_pk_context key;
 unsigned int ksize = 512;
 int exp = 65537;
 char *path = ((void*)0);
 bool pem = 1;

 while (*arg && **arg == '-') {
  if (!strcmp(*arg, "-out") && arg[1]) {
   path = arg[1];
   arg++;
  } else if (!strcmp(*arg, "-3")) {
   exp = 3;
  } else if (!strcmp(*arg, "-der")) {
   pem = 0;
  }
  arg++;
 }

 if (*arg)
  ksize = (unsigned int)atoi(*arg);

 gen_key(&key, ksize, exp, pem);
 write_key(&key, path, pem);

 mbedtls_pk_free(&key);

 return 0;
}
