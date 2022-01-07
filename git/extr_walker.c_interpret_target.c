
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct walker {int (* fetch_ref ) (struct walker*,struct ref*) ;} ;
struct ref {int old_oid; } ;
struct object_id {int dummy; } ;


 struct ref* alloc_ref (char*) ;
 int check_refname_format (char*,int ) ;
 int free (struct ref*) ;
 int get_oid_hex (char*,struct object_id*) ;
 int oidcpy (struct object_id*,int *) ;
 int stub1 (struct walker*,struct ref*) ;

__attribute__((used)) static int interpret_target(struct walker *walker, char *target, struct object_id *oid)
{
 if (!get_oid_hex(target, oid))
  return 0;
 if (!check_refname_format(target, 0)) {
  struct ref *ref = alloc_ref(target);
  if (!walker->fetch_ref(walker, ref)) {
   oidcpy(oid, &ref->old_oid);
   free(ref);
   return 0;
  }
  free(ref);
 }
 return -1;
}
