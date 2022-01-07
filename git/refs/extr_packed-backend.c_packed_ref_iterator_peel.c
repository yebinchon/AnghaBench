
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ref_iterator {int dummy; } ;
struct TYPE_2__ {int flags; } ;
struct packed_ref_iterator {int oid; TYPE_1__ base; int peeled; } ;
struct object_id {int dummy; } ;


 int REF_ISBROKEN ;
 int REF_ISSYMREF ;
 int REF_KNOWS_PEELED ;
 scalar_t__ is_null_oid (int *) ;
 int oidcpy (struct object_id*,int *) ;
 int peel_object (int *,struct object_id*) ;

__attribute__((used)) static int packed_ref_iterator_peel(struct ref_iterator *ref_iterator,
       struct object_id *peeled)
{
 struct packed_ref_iterator *iter =
  (struct packed_ref_iterator *)ref_iterator;

 if ((iter->base.flags & REF_KNOWS_PEELED)) {
  oidcpy(peeled, &iter->peeled);
  return is_null_oid(&iter->peeled) ? -1 : 0;
 } else if ((iter->base.flags & (REF_ISBROKEN | REF_ISSYMREF))) {
  return -1;
 } else {
  return !!peel_object(&iter->oid, peeled);
 }
}
