
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct repository {TYPE_1__* objects; } ;
struct object_id {int dummy; } ;
struct replace_object {struct object_id replacement; } ;
struct TYPE_2__ {int replace_map; } ;


 int MAXREPLACEDEPTH ;
 int _ (char*) ;
 int die (int ,int ) ;
 int oid_to_hex (struct object_id const*) ;
 struct replace_object* oidmap_get (int ,struct object_id const*) ;
 int prepare_replace_object (struct repository*) ;

const struct object_id *do_lookup_replace_object(struct repository *r,
       const struct object_id *oid)
{
 int depth = MAXREPLACEDEPTH;
 const struct object_id *cur = oid;

 prepare_replace_object(r);


 while (depth-- > 0) {
  struct replace_object *repl_obj =
   oidmap_get(r->objects->replace_map, cur);
  if (!repl_obj)
   return cur;
  cur = &repl_obj->replacement;
 }
 die(_("replace depth too high for object %s"), oid_to_hex(oid));
}
