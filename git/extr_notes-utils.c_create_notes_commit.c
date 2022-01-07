
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct object_id {int dummy; } ;
struct notes_tree {int ref; int initialized; } ;
struct commit_list {int dummy; } ;
struct commit {int dummy; } ;


 int assert (int ) ;
 int commit_list_insert (struct commit*,struct commit_list**) ;
 scalar_t__ commit_tree (char const*,size_t,struct object_id*,struct commit_list*,struct object_id*,int *,int *) ;
 int die (char*,...) ;
 struct commit* lookup_commit (struct repository*,struct object_id*) ;
 scalar_t__ parse_commit (struct commit*) ;
 int read_ref (int ,struct object_id*) ;
 scalar_t__ write_notes_tree (struct notes_tree*,struct object_id*) ;

void create_notes_commit(struct repository *r,
    struct notes_tree *t,
    struct commit_list *parents,
    const char *msg, size_t msg_len,
    struct object_id *result_oid)
{
 struct object_id tree_oid;

 assert(t->initialized);

 if (write_notes_tree(t, &tree_oid))
  die("Failed to write notes tree to database");

 if (!parents) {

  struct object_id parent_oid;
  if (!read_ref(t->ref, &parent_oid)) {
   struct commit *parent = lookup_commit(r, &parent_oid);
   if (parse_commit(parent))
    die("Failed to find/parse commit %s", t->ref);
   commit_list_insert(parent, &parents);
  }

 }

 if (commit_tree(msg, msg_len, &tree_oid, parents, result_oid, ((void*)0),
   ((void*)0)))
  die("Failed to commit notes tree to database");
}
