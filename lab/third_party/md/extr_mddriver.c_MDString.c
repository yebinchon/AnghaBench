
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MD_CTX ;


 int MD ;
 int MDFinal (unsigned char*,int *) ;
 int MDInit (int *) ;
 int MDPrint (unsigned char*) ;
 int MDUpdate (int *,unsigned char*,unsigned int) ;
 int printf (char*,...) ;
 unsigned int strlen (char*) ;

__attribute__((used)) static void MDString (char *string)
{
  MD_CTX context;
  unsigned char digest[16];
  unsigned int len = strlen(string);

  MDInit(&context);
  MDUpdate(&context, (unsigned char*)string, len);
  MDFinal(digest, &context);

  printf("MD%d (\"%s\") = ", MD, string);
  MDPrint(digest);
  printf("\n");
}
