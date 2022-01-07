
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_new_entry {int value; int object_id; int list_id; } ;
typedef int FILE ;


 int assert (int) ;
 int dump_list_id (int ,int ) ;
 int dump_object_id (int ,int ) ;
 int fprintf (int ,char*,...) ;
 int fputc (char,int ) ;
 int out ;

void dump_new_entry(FILE *f, const char* szAction, int offset, struct lev_new_entry* E) {
  assert(0 <= offset && offset <= 0xff);
  fprintf(f, "%s+%d\t", szAction, offset);
  dump_list_id(out,E->list_id);
  fputc('\t', out);
  dump_object_id(out,E->object_id);
  fputc('\t', out);
  fprintf(out, "%d\n", E->value);
}
