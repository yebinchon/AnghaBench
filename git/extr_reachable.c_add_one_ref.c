
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rev_info {int dummy; } ;
struct object_id {int dummy; } ;
struct object {int dummy; } ;


 int REF_ISBROKEN ;
 int REF_ISSYMREF ;
 int add_pending_object (struct rev_info*,struct object*,char*) ;
 struct object* parse_object_or_die (struct object_id const*,char const*) ;
 int warning (char*,char const*) ;

__attribute__((used)) static int add_one_ref(const char *path, const struct object_id *oid,
         int flag, void *cb_data)
{
 struct rev_info *revs = (struct rev_info *)cb_data;
 struct object *object;

 if ((flag & REF_ISSYMREF) && (flag & REF_ISBROKEN)) {
  warning("symbolic ref is dangling: %s", path);
  return 0;
 }

 object = parse_object_or_die(oid, path);
 add_pending_object(revs, object, "");

 return 0;
}
