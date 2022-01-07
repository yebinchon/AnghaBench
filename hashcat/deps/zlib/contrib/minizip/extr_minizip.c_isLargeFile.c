
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZPOS64_T ;
typedef int FILE ;


 int * FOPEN_FUNC (char const*,char*) ;
 int FSEEKO_FUNC (int *,int ,int ) ;
 int FTELLO_FUNC (int *) ;
 int SEEK_END ;
 int fclose (int *) ;
 int printf (char*,char const*,int) ;

int isLargeFile(const char* filename)
{
  int largeFile = 0;
  ZPOS64_T pos = 0;
  FILE* pFile = FOPEN_FUNC(filename, "rb");

  if(pFile != ((void*)0))
  {
    int n = FSEEKO_FUNC(pFile, 0, SEEK_END);
    pos = FTELLO_FUNC(pFile);

                printf("File : %s is %lld bytes\n", filename, pos);

    if(pos >= 0xffffffff)
     largeFile = 1;

                fclose(pFile);
  }

 return largeFile;
}
