
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct transport {int got_remote_refs; struct ref const* remote_refs; TYPE_1__* vtable; } ;
struct ref {int dummy; } ;
struct argv_array {int dummy; } ;
struct TYPE_2__ {struct ref const* (* get_refs_list ) (struct transport*,int ,struct argv_array const*) ;} ;


 struct ref const* stub1 (struct transport*,int ,struct argv_array const*) ;

const struct ref *transport_get_remote_refs(struct transport *transport,
         const struct argv_array *ref_prefixes)
{
 if (!transport->got_remote_refs) {
  transport->remote_refs =
   transport->vtable->get_refs_list(transport, 0,
        ref_prefixes);
  transport->got_remote_refs = 1;
 }

 return transport->remote_refs;
}
