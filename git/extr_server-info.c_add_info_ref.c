
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct update_info_ctx {int dummy; } ;
struct object_id {int dummy; } ;
struct object {scalar_t__ type; struct object_id const oid; } ;


 scalar_t__ OBJ_TAG ;
 struct object* deref_tag (int ,struct object*,char const*,int ) ;
 int oid_to_hex (struct object_id const*) ;
 struct object* parse_object (int ,struct object_id const*) ;
 int the_repository ;
 scalar_t__ uic_printf (struct update_info_ctx*,char*,int ,char const*) ;

__attribute__((used)) static int add_info_ref(const char *path, const struct object_id *oid,
   int flag, void *cb_data)
{
 struct update_info_ctx *uic = cb_data;
 struct object *o = parse_object(the_repository, oid);
 if (!o)
  return -1;

 if (uic_printf(uic, "%s	%s\n", oid_to_hex(oid), path) < 0)
  return -1;

 if (o->type == OBJ_TAG) {
  o = deref_tag(the_repository, o, path, 0);
  if (o)
   if (uic_printf(uic, "%s	%s^{}\n",
    oid_to_hex(&o->oid), path) < 0)
    return -1;
 }
 return 0;
}
