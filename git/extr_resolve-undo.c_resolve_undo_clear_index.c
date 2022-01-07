
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int dummy; } ;
struct index_state {int cache_changed; struct string_list* resolve_undo; } ;


 int RESOLVE_UNDO_CHANGED ;
 int free (struct string_list*) ;
 int string_list_clear (struct string_list*,int) ;

void resolve_undo_clear_index(struct index_state *istate)
{
 struct string_list *resolve_undo = istate->resolve_undo;
 if (!resolve_undo)
  return;
 string_list_clear(resolve_undo, 1);
 free(resolve_undo);
 istate->resolve_undo = ((void*)0);
 istate->cache_changed |= RESOLVE_UNDO_CHANGED;
}
