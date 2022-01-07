
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
struct object {int flags; } ;


 int HIDDEN_REF ;
 int OUR_REF ;
 struct object* lookup_unknown_object (struct object_id const*) ;
 scalar_t__ ref_is_hidden (char const*,char const*) ;

__attribute__((used)) static int mark_our_ref(const char *refname, const char *refname_full,
   const struct object_id *oid)
{
 struct object *o = lookup_unknown_object(oid);

 if (ref_is_hidden(refname, refname_full)) {
  o->flags |= HIDDEN_REF;
  return 1;
 }
 o->flags |= OUR_REF;
 return 0;
}
