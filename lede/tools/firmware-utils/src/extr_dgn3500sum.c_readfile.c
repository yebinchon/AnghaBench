
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; } ;
typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fread (char*,int,int,int *) ;
 int free (char*) ;
 scalar_t__ malloc (int) ;
 scalar_t__ stat (char*,struct stat*) ;

__attribute__((used)) static char *readfile(char *filename, int *size)
{
 FILE *fp;
 char *buffer;
 struct stat info;

 if (stat(filename,&info)!=0)
  return ((void*)0);

 if ((fp=fopen(filename,"r"))==((void*)0))
  return ((void*)0);

 buffer=((void*)0);
 for (;;)
 {
  if ((buffer=(char *)malloc(info.st_size+1))==((void*)0))
   break;

  if (fread(buffer,1,info.st_size,fp)!=info.st_size)
  {
   free(buffer);
   buffer=((void*)0);
   break;
  }

  buffer[info.st_size]='\0';
  if(size) *size = info.st_size;

  break;
 }

 (void)fclose(fp);

 return buffer;
}
