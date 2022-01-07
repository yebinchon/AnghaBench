
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref {int new_oid; } ;
struct object_id {int dummy; } ;


 struct ref* alloc_delete_ref () ;
 struct ref* alloc_ref (char const*) ;
 scalar_t__ get_oid (char const*,struct object_id*) ;
 int oidcpy (int *,struct object_id*) ;

__attribute__((used)) static int try_explicit_object_name(const char *name,
        struct ref **match)
{
 struct object_id oid;

 if (!*name) {
  if (match)
   *match = alloc_delete_ref();
  return 0;
 }

 if (get_oid(name, &oid))
  return -1;

 if (match) {
  *match = alloc_ref(name);
  oidcpy(&(*match)->new_oid, &oid);
 }
 return 0;
}
