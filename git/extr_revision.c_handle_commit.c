
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tree {int dummy; } ;
struct tag {TYPE_1__* tagged; int tag; } ;
struct rev_info {int limited; int blob_objects; int repo; int tree_objects; scalar_t__ sources; int topo_order; scalar_t__ exclude_promisor_objects; scalar_t__ ignore_missing_links; scalar_t__ tag_objects; } ;
struct object_array_entry {char* name; char* path; unsigned int mode; struct object* item; } ;
struct object {unsigned long flags; scalar_t__ type; } ;
struct commit {int dummy; } ;
struct TYPE_2__ {int oid; } ;


 scalar_t__ OBJ_BLOB ;
 scalar_t__ OBJ_COMMIT ;
 scalar_t__ OBJ_TAG ;
 scalar_t__ OBJ_TREE ;
 unsigned long UNINTERESTING ;
 int add_pending_object (struct rev_info*,struct object*,int ) ;
 int add_pending_object_with_path (struct rev_info*,struct object*,char const*,unsigned int,char const*) ;
 int die (char*,char const*) ;
 int generation_numbers_enabled (int ) ;
 int get_tagged_oid (struct tag*) ;
 scalar_t__ is_promisor_object (int *) ;
 int mark_parents_uninteresting (struct commit*) ;
 int mark_tree_contents_uninteresting (int ,struct tree*) ;
 char const* oid_to_hex (int *) ;
 scalar_t__ parse_commit (struct commit*) ;
 struct object* parse_object (int ,int ) ;
 char** revision_sources_at (scalar_t__,struct commit*) ;
 int the_repository ;
 char* xstrdup (char const*) ;

__attribute__((used)) static struct commit *handle_commit(struct rev_info *revs,
        struct object_array_entry *entry)
{
 struct object *object = entry->item;
 const char *name = entry->name;
 const char *path = entry->path;
 unsigned int mode = entry->mode;
 unsigned long flags = object->flags;




 while (object->type == OBJ_TAG) {
  struct tag *tag = (struct tag *) object;
  if (revs->tag_objects && !(flags & UNINTERESTING))
   add_pending_object(revs, object, tag->tag);
  object = parse_object(revs->repo, get_tagged_oid(tag));
  if (!object) {
   if (revs->ignore_missing_links || (flags & UNINTERESTING))
    return ((void*)0);
   if (revs->exclude_promisor_objects &&
       is_promisor_object(&tag->tagged->oid))
    return ((void*)0);
   die("bad object %s", oid_to_hex(&tag->tagged->oid));
  }
  object->flags |= flags;





  path = ((void*)0);
  mode = 0;
 }





 if (object->type == OBJ_COMMIT) {
  struct commit *commit = (struct commit *)object;

  if (parse_commit(commit) < 0)
   die("unable to parse commit %s", name);
  if (flags & UNINTERESTING) {
   mark_parents_uninteresting(commit);

   if (!revs->topo_order || !generation_numbers_enabled(the_repository))
    revs->limited = 1;
  }
  if (revs->sources) {
   char **slot = revision_sources_at(revs->sources, commit);

   if (!*slot)
    *slot = xstrdup(name);
  }
  return commit;
 }





 if (object->type == OBJ_TREE) {
  struct tree *tree = (struct tree *)object;
  if (!revs->tree_objects)
   return ((void*)0);
  if (flags & UNINTERESTING) {
   mark_tree_contents_uninteresting(revs->repo, tree);
   return ((void*)0);
  }
  add_pending_object_with_path(revs, object, name, mode, path);
  return ((void*)0);
 }




 if (object->type == OBJ_BLOB) {
  if (!revs->blob_objects)
   return ((void*)0);
  if (flags & UNINTERESTING)
   return ((void*)0);
  add_pending_object_with_path(revs, object, name, mode, path);
  return ((void*)0);
 }
 die("%s is unknown object", name);
}
