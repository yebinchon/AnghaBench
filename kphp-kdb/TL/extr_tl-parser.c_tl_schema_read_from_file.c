
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_compiler {int dummy; } ;


 int free (char*) ;
 int tl_compiler_init (struct tl_compiler*) ;
 char* tl_readfile (struct tl_compiler*,char const* const) ;
 int tl_schema_read (struct tl_compiler*,char*) ;

int tl_schema_read_from_file (struct tl_compiler *C, const char *const filename) {
  tl_compiler_init (C);
  char *a = tl_readfile (C, filename);
  if (a == ((void*)0)) {
    return -1;
  }
  int r = tl_schema_read (C, a);
  free (a);

  return r;
}
