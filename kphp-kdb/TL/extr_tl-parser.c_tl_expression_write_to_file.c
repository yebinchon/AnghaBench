
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_expression {scalar_t__ type; char* text; } ;
struct tl_compiler {int flag_output_magic; } ;
typedef int FILE ;


 int assert (int ) ;
 int cstr_free (char**) ;
 int fprintf (int *,char*,char*) ;
 char* tl_expression_join (struct tl_compiler*,struct tl_expression*,int) ;
 scalar_t__ tlet_simple ;

void tl_expression_write_to_file (FILE *f, struct tl_compiler *C, struct tl_expression *E) {
  int output_magic = C->flag_output_magic;
  if (E->type != tlet_simple) {
    output_magic = 0;
  }
  char *t = ((void*)0);
  if (output_magic) {
    t = tl_expression_join (C, E, 1);
    assert (t != ((void*)0));
  }
  fprintf (f, "%s;\n", t ? t : E->text);
  if (t != ((void*)0)) {
    cstr_free (&t);
  }
}
