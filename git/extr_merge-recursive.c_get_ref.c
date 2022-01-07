
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree {int dummy; } ;
struct repository {int dummy; } ;
struct object_id {int dummy; } ;
struct object {scalar_t__ type; } ;
struct commit {int dummy; } ;


 scalar_t__ OBJ_COMMIT ;
 scalar_t__ OBJ_TREE ;
 struct object* deref_tag (struct repository*,int ,char const*,int ) ;
 struct commit* make_virtual_commit (struct repository*,struct tree*,char const*) ;
 scalar_t__ parse_commit (struct commit*) ;
 int parse_object (struct repository*,struct object_id const*) ;
 int strlen (char const*) ;

__attribute__((used)) static struct commit *get_ref(struct repository *repo,
         const struct object_id *oid,
         const char *name)
{
 struct object *object;

 object = deref_tag(repo, parse_object(repo, oid),
      name, strlen(name));
 if (!object)
  return ((void*)0);
 if (object->type == OBJ_TREE)
  return make_virtual_commit(repo, (struct tree*)object, name);
 if (object->type != OBJ_COMMIT)
  return ((void*)0);
 if (parse_commit((struct commit *)object))
  return ((void*)0);
 return (struct commit *)object;
}
