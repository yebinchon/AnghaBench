
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct targ_extra {int op; int mode; int limit; int ad_id; } ;
struct gather {struct targ_extra* extra; } ;




 int assert (int ) ;
 int fprintf (int ,char*,int) ;
 int stderr ;
 int tl_store_int (int) ;

int sum_vector_on_send (struct gather *G, int num) {
  struct targ_extra *e = G->extra;
  switch (e->op) {
  case 128:
    tl_store_int (e->op);
    tl_store_int (e->mode & (~1));
    tl_store_int (e->limit + 100);
    break;
  case 129:
    tl_store_int (e->op);
    tl_store_int (e->ad_id);
    tl_store_int (e->mode & (~1));
    tl_store_int (e->limit);
    break;
  default:
    fprintf (stderr, "op = 0x%08x\n", e->op);
    assert (0);
  }
  return 0;
}
