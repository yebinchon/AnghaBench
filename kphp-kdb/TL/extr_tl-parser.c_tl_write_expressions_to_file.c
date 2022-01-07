
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_compiler {int * expr; } ;
typedef int FILE ;


 size_t TL_SECTION_FUNCTIONS ;
 size_t TL_SECTION_TYPES ;
 int fclose (int *) ;
 int * fopen (char const* const,char*) ;
 int fprintf (int *,char*) ;
 int tl_failf (struct tl_compiler*,char*,char const* const) ;
 int tl_write_list_expressions_free_to_file (int *,struct tl_compiler*,int *) ;

int tl_write_expressions_to_file (struct tl_compiler *C, const char *const filename) {
  FILE *f = fopen (filename, "w");
  if (f == ((void*)0)) {
    return tl_failf (C, "fopen (\"%s\", \"w\") fail. %m", filename);
  }
  tl_write_list_expressions_free_to_file (f, C, &C->expr[TL_SECTION_TYPES]);
  fprintf (f, "---functions---\n");
  tl_write_list_expressions_free_to_file (f, C, &C->expr[TL_SECTION_FUNCTIONS]);
  fclose (f);
  return 0;
}
