
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_scheme_object {int dummy; } ;
struct tl_compiler {int dummy; } ;


 int free (char*) ;
 char* tl_readfile (struct tl_compiler*,char const* const) ;
 struct tl_scheme_object* tl_scheme_parse (struct tl_compiler*,char*) ;

struct tl_scheme_object *tl_scheme_parse_file (struct tl_compiler *C, const char *const filename) {
  char *a = tl_readfile (C, filename);
  if (a == ((void*)0)) {
    return ((void*)0);
  }
  struct tl_scheme_object *O = tl_scheme_parse (C, a);
  free (a);
  return O;
}
