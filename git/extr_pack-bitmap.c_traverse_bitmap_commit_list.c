
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitmap_index {int tags; int blobs; int trees; int commits; int result; } ;
typedef int show_reachable_fn ;


 int OBJ_BLOB ;
 int OBJ_COMMIT ;
 int OBJ_TAG ;
 int OBJ_TREE ;
 int assert (int ) ;
 int show_extended_objects (struct bitmap_index*,int ) ;
 int show_objects_for_type (struct bitmap_index*,int ,int ,int ) ;

void traverse_bitmap_commit_list(struct bitmap_index *bitmap_git,
     show_reachable_fn show_reachable)
{
 assert(bitmap_git->result);

 show_objects_for_type(bitmap_git, bitmap_git->commits,
  OBJ_COMMIT, show_reachable);
 show_objects_for_type(bitmap_git, bitmap_git->trees,
  OBJ_TREE, show_reachable);
 show_objects_for_type(bitmap_git, bitmap_git->blobs,
  OBJ_BLOB, show_reachable);
 show_objects_for_type(bitmap_git, bitmap_git->tags,
  OBJ_TAG, show_reachable);

 show_extended_objects(bitmap_git, show_reachable);
}
