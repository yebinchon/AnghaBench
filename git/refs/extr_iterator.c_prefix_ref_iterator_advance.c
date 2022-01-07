
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ref_iterator {scalar_t__ refname; int flags; int oid; scalar_t__ ordered; } ;
struct TYPE_2__ {scalar_t__ refname; int flags; int oid; } ;
struct prefix_ref_iterator {scalar_t__ trim; struct ref_iterator* iter0; TYPE_1__ base; int prefix; } ;


 int BUG (char*) ;
 int ITER_DONE ;
 int ITER_ERROR ;
 int ITER_OK ;
 int compare_prefix (scalar_t__,int ) ;
 int ref_iterator_abort (struct ref_iterator*) ;
 int ref_iterator_advance (struct ref_iterator*) ;
 scalar_t__ strlen (scalar_t__) ;

__attribute__((used)) static int prefix_ref_iterator_advance(struct ref_iterator *ref_iterator)
{
 struct prefix_ref_iterator *iter =
  (struct prefix_ref_iterator *)ref_iterator;
 int ok;

 while ((ok = ref_iterator_advance(iter->iter0)) == ITER_OK) {
  int cmp = compare_prefix(iter->iter0->refname, iter->prefix);

  if (cmp < 0)
   continue;

  if (cmp > 0) {





   if (iter->iter0->ordered) {
    ok = ref_iterator_abort(iter->iter0);
    break;
   } else {
    continue;
   }
  }

  if (iter->trim) {
   if (strlen(iter->iter0->refname) <= iter->trim)
    BUG("attempt to trim too many characters");
   iter->base.refname = iter->iter0->refname + iter->trim;
  } else {
   iter->base.refname = iter->iter0->refname;
  }

  iter->base.oid = iter->iter0->oid;
  iter->base.flags = iter->iter0->flags;
  return ITER_OK;
 }

 iter->iter0 = ((void*)0);
 if (ref_iterator_abort(ref_iterator) != ITER_DONE)
  return ITER_ERROR;
 return ok;
}
