
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct moved_entry {int ent; struct moved_entry* next_line; } ;
struct moved_block {struct moved_entry* match; } ;
struct hashmap {int (* cmpfn ) (struct diff_options*,int *,int *,int *) ;} ;
struct diff_options {int dummy; } ;


 int stub1 (struct diff_options*,int *,int *,int *) ;

__attribute__((used)) static void pmb_advance_or_null(struct diff_options *o,
    struct moved_entry *match,
    struct hashmap *hm,
    struct moved_block *pmb,
    int pmb_nr)
{
 int i;
 for (i = 0; i < pmb_nr; i++) {
  struct moved_entry *prev = pmb[i].match;
  struct moved_entry *cur = (prev && prev->next_line) ?
    prev->next_line : ((void*)0);
  if (cur && !hm->cmpfn(o, &cur->ent, &match->ent, ((void*)0))) {
   pmb[i].match = cur;
  } else {
   pmb[i].match = ((void*)0);
  }
 }
}
