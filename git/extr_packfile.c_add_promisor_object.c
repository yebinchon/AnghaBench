
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct tree_desc {int dummy; } ;
struct tree {int size; int buffer; } ;
struct tag {int dummy; } ;
struct packed_git {int dummy; } ;
struct oidset {int dummy; } ;
struct object_id {int dummy; } ;
struct object {scalar_t__ type; } ;
struct name_entry {struct object_id const oid; } ;
struct commit_list {TYPE_2__* item; struct commit_list* next; } ;
struct commit {struct commit_list* parents; } ;
struct TYPE_3__ {struct object_id const oid; } ;
struct TYPE_4__ {TYPE_1__ object; } ;


 scalar_t__ OBJ_COMMIT ;
 scalar_t__ OBJ_TAG ;
 scalar_t__ OBJ_TREE ;
 struct object_id const* get_commit_tree_oid (struct commit*) ;
 struct object_id const* get_tagged_oid (struct tag*) ;
 scalar_t__ init_tree_desc_gently (struct tree_desc*,int ,int ) ;
 int oidset_insert (struct oidset*,struct object_id const*) ;
 struct object* parse_object (int ,struct object_id const*) ;
 int the_repository ;
 scalar_t__ tree_entry_gently (struct tree_desc*,struct name_entry*) ;

__attribute__((used)) static int add_promisor_object(const struct object_id *oid,
          struct packed_git *pack,
          uint32_t pos,
          void *set_)
{
 struct oidset *set = set_;
 struct object *obj = parse_object(the_repository, oid);
 if (!obj)
  return 1;

 oidset_insert(set, oid);





 if (obj->type == OBJ_TREE) {
  struct tree *tree = (struct tree *)obj;
  struct tree_desc desc;
  struct name_entry entry;
  if (init_tree_desc_gently(&desc, tree->buffer, tree->size))




   return 0;
  while (tree_entry_gently(&desc, &entry))
   oidset_insert(set, &entry.oid);
 } else if (obj->type == OBJ_COMMIT) {
  struct commit *commit = (struct commit *) obj;
  struct commit_list *parents = commit->parents;

  oidset_insert(set, get_commit_tree_oid(commit));
  for (; parents; parents = parents->next)
   oidset_insert(set, &parents->item->object.oid);
 } else if (obj->type == OBJ_TAG) {
  struct tag *tag = (struct tag *) obj;
  oidset_insert(set, get_tagged_oid(tag));
 }
 return 0;
}
