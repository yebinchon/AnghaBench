
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_compiler {int flag_reading_builtin_schema; int * expr; } ;


 int assert (int) ;
 char const* tl_builtin_shema ;
 int tl_compiler_init (struct tl_compiler*) ;
 int tl_list_expressions_parse (struct tl_compiler*,int *) ;
 int tl_schema_split (struct tl_compiler*,char const*) ;

int tl_schema_read (struct tl_compiler *C, const char *input) {
  tl_compiler_init (C);
  C->flag_reading_builtin_schema = 1;
  int r = tl_schema_split (C, tl_builtin_shema);
  assert (!r);
  C->flag_reading_builtin_schema = 0;

  r = tl_schema_split (C, input);
  if (r < 0) {
    return r;
  }

  int i;
  for (i = 0; i < 2; i++) {
    r = tl_list_expressions_parse (C, &C->expr[i]);
    if (r < 0) {
      return r;
    }
  }

  return 0;
}
