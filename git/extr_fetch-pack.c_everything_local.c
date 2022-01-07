
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
struct ref {int name; struct object_id old_oid; struct ref* next; } ;
struct object {int flags; } ;
struct fetch_pack_args {int dummy; } ;


 int COMPLETE ;
 char* _ (char*) ;
 struct object* lookup_object (int ,struct object_id const*) ;
 int oid_to_hex (struct object_id const*) ;
 int print_verbose (struct fetch_pack_args*,char*,int ,int ) ;
 int the_repository ;

__attribute__((used)) static int everything_local(struct fetch_pack_args *args,
       struct ref **refs)
{
 struct ref *ref;
 int retval;

 for (retval = 1, ref = *refs; ref ; ref = ref->next) {
  const struct object_id *remote = &ref->old_oid;
  struct object *o;

  o = lookup_object(the_repository, remote);
  if (!o || !(o->flags & COMPLETE)) {
   retval = 0;
   print_verbose(args, "want %s (%s)", oid_to_hex(remote),
          ref->name);
   continue;
  }
  print_verbose(args, _("already have %s (%s)"), oid_to_hex(remote),
         ref->name);
 }

 return retval;
}
