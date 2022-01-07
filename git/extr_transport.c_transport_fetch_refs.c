
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct transport {TYPE_2__* vtable; } ;
struct ref {struct ref* next; int old_oid; TYPE_1__* peer_ref; } ;
struct TYPE_4__ {int (* fetch ) (struct transport*,int,struct ref**) ;} ;
struct TYPE_3__ {int old_oid; } ;


 int ALLOC_ARRAY (struct ref**,int) ;
 int ALLOC_GROW (struct ref**,int,int) ;
 int free (struct ref**) ;
 int is_null_oid (int *) ;
 scalar_t__ oideq (int *,int *) ;
 int stub1 (struct transport*,int,struct ref**) ;

int transport_fetch_refs(struct transport *transport, struct ref *refs)
{
 int rc;
 int nr_heads = 0, nr_alloc = 0, nr_refs = 0;
 struct ref **heads = ((void*)0);
 struct ref *rm;

 for (rm = refs; rm; rm = rm->next) {
  nr_refs++;
  if (rm->peer_ref &&
      !is_null_oid(&rm->old_oid) &&
      oideq(&rm->peer_ref->old_oid, &rm->old_oid))
   continue;
  ALLOC_GROW(heads, nr_heads + 1, nr_alloc);
  heads[nr_heads++] = rm;
 }

 if (!nr_heads) {







  ALLOC_ARRAY(heads, nr_refs);
  for (rm = refs; rm; rm = rm->next)
   heads[nr_heads++] = rm;
 }

 rc = transport->vtable->fetch(transport, nr_heads, heads);

 free(heads);
 return rc;
}
