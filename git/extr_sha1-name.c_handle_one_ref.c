
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
struct object {scalar_t__ type; } ;
struct handle_one_ref_cb {int repo; struct commit_list** list; } ;
struct commit_list {int dummy; } ;
struct commit {int dummy; } ;


 scalar_t__ OBJ_COMMIT ;
 scalar_t__ OBJ_TAG ;
 int commit_list_insert (struct commit*,struct commit_list**) ;
 struct object* deref_tag (int ,struct object*,char const*,int ) ;
 struct object* parse_object (int ,struct object_id const*) ;
 int strlen (char const*) ;

__attribute__((used)) static int handle_one_ref(const char *path, const struct object_id *oid,
     int flag, void *cb_data)
{
 struct handle_one_ref_cb *cb = cb_data;
 struct commit_list **list = cb->list;
 struct object *object = parse_object(cb->repo, oid);
 if (!object)
  return 0;
 if (object->type == OBJ_TAG) {
  object = deref_tag(cb->repo, object, path,
       strlen(path));
  if (!object)
   return 0;
 }
 if (object->type != OBJ_COMMIT)
  return 0;
 commit_list_insert((struct commit *)object, list);
 return 0;
}
