
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int SEEK_END ;
 int SEEK_SET ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 long fread (unsigned char*,int,long,int *) ;
 int free (unsigned char*) ;
 scalar_t__ fseek (int *,int ,int ) ;
 long ftell (int *) ;
 scalar_t__ malloc (long) ;

unsigned char *read_file(const char *name, long *size)
{
 FILE *f;
 unsigned char *data = ((void*)0);
 *size = 0;
 f = fopen(name, "r");
 if (f != ((void*)0))
 {
  if (fseek(f, 0, SEEK_END) == 0)
  {
     *size = ftell(f);
   if (*size != -1)
   {
    if (fseek(f, 0, SEEK_SET) == 0)
    {
     data = (unsigned char *)malloc(*size);
     if (data != ((void*)0))
     {
      if (fread(data, sizeof(char), *size, f) != *size)
      {
       free(data);
       data = ((void*)0);
      }
     }
    }
   }
  }
  fclose(f);
 }
 return data;
}
