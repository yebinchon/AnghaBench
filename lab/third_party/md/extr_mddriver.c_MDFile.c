
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MD_CTX ;
typedef int FILE ;


 int MD ;
 int MDFinal (unsigned char*,int *) ;
 int MDInit (int *) ;
 int MDPrint (unsigned char*) ;
 int MDUpdate (int *,unsigned char*,int) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fread (unsigned char*,int,int,int *) ;
 int printf (char*,...) ;

__attribute__((used)) static void MDFile(char *filename)
{
  FILE *file;
  MD_CTX context;
  int len;
  unsigned char buffer[1024], digest[16];

  if ((file = fopen (filename, "rb")) == ((void*)0)) {
    printf("%s can't be opened\n", filename);
  } else {
    MDInit(&context);
    while ((len = fread (buffer, 1, 1024, file)))
      MDUpdate(&context, buffer, len);
    MDFinal(digest, &context);

    fclose(file);

    printf("MD%d (%s) = ", MD, filename);
    MDPrint(digest);
    printf("\n");
  }
}
