
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_set_flags {int type; int object_id; int list_id; } ;
typedef int FILE ;


 int LEV_LI_SET_FLAGS ;
 int assert (int) ;
 int dump_list_id (int *,int ) ;
 int dump_object_id (int *,int ) ;
 int fprintf (int *,char*,char const*,int) ;
 int fputc (char,int *) ;

void dump_set_flags (FILE *f, const char* szAction, int offset, struct lev_set_flags* E) {
  assert(0 <= offset && offset <= 0xff);
  fprintf(f, "%s+%d\t", szAction, E->type-LEV_LI_SET_FLAGS);
  dump_list_id(f,E->list_id);
  fputc('\t', f);
  dump_object_id(f,E->object_id);
  fputc('\n', f);
}
