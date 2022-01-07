
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ref_iterator {int flags; int oid; int refname; } ;
struct TYPE_2__ {int flags; int oid; int refname; } ;
struct merge_ref_iterator {int (* select ) (struct ref_iterator*,struct ref_iterator*,int ) ;struct ref_iterator** current; TYPE_1__ base; struct ref_iterator* iter0; struct ref_iterator* iter1; int cb_data; } ;
typedef enum iterator_selection { ____Placeholder_iterator_selection } iterator_selection ;


 int ITER_CURRENT_SELECTION_MASK ;
 int ITER_ERROR ;
 int ITER_OK ;
 int ITER_SELECT_DONE ;
 int ITER_SELECT_ERROR ;
 int ITER_SKIP_SECONDARY ;
 int ITER_YIELD_CURRENT ;
 int ref_iterator_abort (struct ref_iterator*) ;
 int ref_iterator_advance (struct ref_iterator*) ;
 int stub1 (struct ref_iterator*,struct ref_iterator*,int ) ;

__attribute__((used)) static int merge_ref_iterator_advance(struct ref_iterator *ref_iterator)
{
 struct merge_ref_iterator *iter =
  (struct merge_ref_iterator *)ref_iterator;
 int ok;

 if (!iter->current) {

  if ((ok = ref_iterator_advance(iter->iter0)) != ITER_OK) {
   iter->iter0 = ((void*)0);
   if (ok == ITER_ERROR)
    goto error;
  }
  if ((ok = ref_iterator_advance(iter->iter1)) != ITER_OK) {
   iter->iter1 = ((void*)0);
   if (ok == ITER_ERROR)
    goto error;
  }
 } else {




  if ((ok = ref_iterator_advance(*iter->current)) != ITER_OK) {
   *iter->current = ((void*)0);
   if (ok == ITER_ERROR)
    goto error;
  }
 }


 while (1) {
  struct ref_iterator **secondary;
  enum iterator_selection selection =
   iter->select(iter->iter0, iter->iter1, iter->cb_data);

  if (selection == ITER_SELECT_DONE) {
   return ref_iterator_abort(ref_iterator);
  } else if (selection == ITER_SELECT_ERROR) {
   ref_iterator_abort(ref_iterator);
   return ITER_ERROR;
  }

  if ((selection & ITER_CURRENT_SELECTION_MASK) == 0) {
   iter->current = &iter->iter0;
   secondary = &iter->iter1;
  } else {
   iter->current = &iter->iter1;
   secondary = &iter->iter0;
  }

  if (selection & ITER_SKIP_SECONDARY) {
   if ((ok = ref_iterator_advance(*secondary)) != ITER_OK) {
    *secondary = ((void*)0);
    if (ok == ITER_ERROR)
     goto error;
   }
  }

  if (selection & ITER_YIELD_CURRENT) {
   iter->base.refname = (*iter->current)->refname;
   iter->base.oid = (*iter->current)->oid;
   iter->base.flags = (*iter->current)->flags;
   return ITER_OK;
  }
 }

error:
 ref_iterator_abort(ref_iterator);
 return ITER_ERROR;
}
