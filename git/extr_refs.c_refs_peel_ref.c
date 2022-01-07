
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ref_store {int dummy; } ;
struct object_id {int dummy; } ;
struct TYPE_3__ {char const* refname; } ;


 int RESOLVE_REF_READING ;
 TYPE_1__* current_ref_iter ;
 int oidcpy (struct object_id*,struct object_id*) ;
 int peel_object (struct object_id*,struct object_id*) ;
 scalar_t__ ref_iterator_peel (TYPE_1__*,struct object_id*) ;
 scalar_t__ refs_read_ref_full (struct ref_store*,char const*,int ,struct object_id*,int*) ;

int refs_peel_ref(struct ref_store *refs, const char *refname,
    struct object_id *oid)
{
 int flag;
 struct object_id base;

 if (current_ref_iter && current_ref_iter->refname == refname) {
  struct object_id peeled;

  if (ref_iterator_peel(current_ref_iter, &peeled))
   return -1;
  oidcpy(oid, &peeled);
  return 0;
 }

 if (refs_read_ref_full(refs, refname,
          RESOLVE_REF_READING, &base, &flag))
  return -1;

 return peel_object(&base, oid);
}
