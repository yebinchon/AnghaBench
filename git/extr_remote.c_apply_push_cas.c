
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct remote {int dummy; } ;
struct ref {struct ref* next; } ;
struct push_cas_option {int dummy; } ;


 int apply_cas (struct push_cas_option*,struct remote*,struct ref*) ;

void apply_push_cas(struct push_cas_option *cas,
      struct remote *remote,
      struct ref *remote_refs)
{
 struct ref *ref;
 for (ref = remote_refs; ref; ref = ref->next)
  apply_cas(cas, remote, ref);
}
