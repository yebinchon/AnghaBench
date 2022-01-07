
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree {int dummy; } ;
struct tag {int dummy; } ;
struct parsed_object_pool {unsigned int obj_hash_size; struct object** shallow_stat; struct object** object_state; struct object** tag_state; struct object** commit_state; struct object** tree_state; struct object** blob_state; int * buffer_slab; struct object** obj_hash; } ;
struct object {scalar_t__ type; } ;
struct commit {int dummy; } ;


 int FREE_AND_NULL (struct object**) ;
 scalar_t__ OBJ_COMMIT ;
 scalar_t__ OBJ_TAG ;
 scalar_t__ OBJ_TREE ;
 int clear_alloc_state (struct object**) ;
 int free_commit_buffer_slab (int *) ;
 int free_tree_buffer (struct tree*) ;
 int release_commit_memory (struct parsed_object_pool*,struct commit*) ;
 int release_tag_memory (struct tag*) ;
 int stat_validity_clear (struct object**) ;

void parsed_object_pool_clear(struct parsed_object_pool *o)
{







 unsigned i;

 for (i = 0; i < o->obj_hash_size; i++) {
  struct object *obj = o->obj_hash[i];

  if (!obj)
   continue;

  if (obj->type == OBJ_TREE)
   free_tree_buffer((struct tree*)obj);
  else if (obj->type == OBJ_COMMIT)
   release_commit_memory(o, (struct commit*)obj);
  else if (obj->type == OBJ_TAG)
   release_tag_memory((struct tag*)obj);
 }

 FREE_AND_NULL(o->obj_hash);
 o->obj_hash_size = 0;

 free_commit_buffer_slab(o->buffer_slab);
 o->buffer_slab = ((void*)0);

 clear_alloc_state(o->blob_state);
 clear_alloc_state(o->tree_state);
 clear_alloc_state(o->commit_state);
 clear_alloc_state(o->tag_state);
 clear_alloc_state(o->object_state);
 stat_validity_clear(o->shallow_stat);
 FREE_AND_NULL(o->blob_state);
 FREE_AND_NULL(o->tree_state);
 FREE_AND_NULL(o->commit_state);
 FREE_AND_NULL(o->tag_state);
 FREE_AND_NULL(o->object_state);
 FREE_AND_NULL(o->shallow_stat);
}
