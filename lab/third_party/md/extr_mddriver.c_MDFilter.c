
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MD_CTX ;


 int MDFinal (unsigned char*,int *) ;
 int MDInit (int *) ;
 int MDPrint (unsigned char*) ;
 int MDUpdate (int *,unsigned char*,int) ;
 int fread (unsigned char*,int,int,int ) ;
 int printf (char*) ;
 int stdin ;

__attribute__((used)) static void MDFilter(void)
{
  MD_CTX context;
  int len;
  unsigned char buffer[16], digest[16];

  MDInit (&context);
  while ((len = fread (buffer, 1, 16, stdin)))
    MDUpdate(&context, buffer, len);
  MDFinal(digest, &context);

  MDPrint(digest);
  printf("\n");
}
