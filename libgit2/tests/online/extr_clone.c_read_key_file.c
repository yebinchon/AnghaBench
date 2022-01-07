
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int SEEK_END ;
 int SEEK_SET ;
 int cl_assert (int) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fread (char*,long,int,int *) ;
 int fseek (int *,int ,int ) ;
 long ftell (int *) ;
 char* malloc (long) ;

__attribute__((used)) static char *read_key_file(const char *path)
{
 FILE *f;
 char *buf;
 long key_length;

 if (!path || !*path)
  return ((void*)0);

 cl_assert((f = fopen(path, "r")) != ((void*)0));
 cl_assert(fseek(f, 0, SEEK_END) != -1);
 cl_assert((key_length = ftell(f)) != -1);
 cl_assert(fseek(f, 0, SEEK_SET) != -1);
 cl_assert((buf = malloc(key_length)) != ((void*)0));
 cl_assert(fread(buf, key_length, 1, f) == 1);
 fclose(f);

 return buf;
}
