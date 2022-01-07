
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct stat {int st_size; } ;
struct TYPE_3__ {size_t size; int ptr; } ;
typedef TYPE_1__ mmfile_t ;
typedef int FILE ;


 int error (char*,char const*) ;
 int error_errno (char*,char const*) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fread (int ,size_t,int,int *) ;
 scalar_t__ stat (char const*,struct stat*) ;
 int xmalloc (size_t) ;
 size_t xsize_t (int ) ;

int read_mmfile(mmfile_t *ptr, const char *filename)
{
 struct stat st;
 FILE *f;
 size_t sz;

 if (stat(filename, &st))
  return error_errno("Could not stat %s", filename);
 if ((f = fopen(filename, "rb")) == ((void*)0))
  return error_errno("Could not open %s", filename);
 sz = xsize_t(st.st_size);
 ptr->ptr = xmalloc(sz ? sz : 1);
 if (sz && fread(ptr->ptr, sz, 1, f) != 1) {
  fclose(f);
  return error("Could not read %s", filename);
 }
 fclose(f);
 ptr->size = sz;
 return 0;
}
