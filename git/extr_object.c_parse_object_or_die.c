
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
struct object {int dummy; } ;


 int _ (char*) ;
 int die (int ,char const*) ;
 char const* oid_to_hex (struct object_id const*) ;
 struct object* parse_object (int ,struct object_id const*) ;
 int the_repository ;

struct object *parse_object_or_die(const struct object_id *oid,
       const char *name)
{
 struct object *o = parse_object(the_repository, oid);
 if (o)
  return o;

 die(_("unable to parse object: %s"), name ? name : oid_to_hex(oid));
}
