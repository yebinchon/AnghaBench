
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bitmap_index {int result; } ;


 int OBJ_BLOB ;
 int OBJ_COMMIT ;
 int OBJ_TAG ;
 int OBJ_TREE ;
 int assert (int ) ;
 int count_object_type (struct bitmap_index*,int ) ;

void count_bitmap_commit_list(struct bitmap_index *bitmap_git,
         uint32_t *commits, uint32_t *trees,
         uint32_t *blobs, uint32_t *tags)
{
 assert(bitmap_git->result);

 if (commits)
  *commits = count_object_type(bitmap_git, OBJ_COMMIT);

 if (trees)
  *trees = count_object_type(bitmap_git, OBJ_TREE);

 if (blobs)
  *blobs = count_object_type(bitmap_git, OBJ_BLOB);

 if (tags)
  *tags = count_object_type(bitmap_git, OBJ_TAG);
}
