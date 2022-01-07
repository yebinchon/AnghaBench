
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct object_id {int dummy; } ;
struct TYPE_2__ {int * update_ref; int dirty; int initialized; } ;
struct notes_cache {TYPE_1__ tree; int validity; } ;


 int UPDATE_REFS_QUIET_ON_ERR ;
 scalar_t__ commit_tree (int ,int ,struct object_id*,int *,struct object_id*,int *,int *) ;
 int strlen (int ) ;
 scalar_t__ update_ref (char*,int *,struct object_id*,int *,int ,int ) ;
 scalar_t__ write_notes_tree (TYPE_1__*,struct object_id*) ;

int notes_cache_write(struct notes_cache *c)
{
 struct object_id tree_oid, commit_oid;

 if (!c || !c->tree.initialized || !c->tree.update_ref ||
     !*c->tree.update_ref)
  return -1;
 if (!c->tree.dirty)
  return 0;

 if (write_notes_tree(&c->tree, &tree_oid))
  return -1;
 if (commit_tree(c->validity, strlen(c->validity), &tree_oid, ((void*)0),
   &commit_oid, ((void*)0), ((void*)0)) < 0)
  return -1;
 if (update_ref("update notes cache", c->tree.update_ref, &commit_oid,
         ((void*)0), 0, UPDATE_REFS_QUIET_ON_ERR) < 0)
  return -1;

 return 0;
}
