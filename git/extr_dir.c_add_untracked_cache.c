
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int untracked; } ;


 int free_untracked_cache (int ) ;
 int ident_in_untracked (int ) ;
 int new_untracked_cache (struct index_state*) ;

void add_untracked_cache(struct index_state *istate)
{
 if (!istate->untracked) {
  new_untracked_cache(istate);
 } else {
  if (!ident_in_untracked(istate->untracked)) {
   free_untracked_cache(istate->untracked);
   new_untracked_cache(istate);
  }
 }
}
