
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref {struct ref* next; int new_oid; } ;
struct object_id {int dummy; } ;


 struct ref* alloc_ref (char const*) ;
 scalar_t__ check_refname_format (char const*,int ) ;
 int oidcpy (int *,struct object_id const*) ;

__attribute__((used)) static int one_local_ref(const char *refname, const struct object_id *oid,
    int flag, void *cb_data)
{
 struct ref ***local_tail = cb_data;
 struct ref *ref;


 if (check_refname_format(refname + 5, 0))
  return 0;

 ref = alloc_ref(refname);
 oidcpy(&ref->new_oid, oid);
 **local_tail = ref;
 *local_tail = &ref->next;
 return 0;
}
