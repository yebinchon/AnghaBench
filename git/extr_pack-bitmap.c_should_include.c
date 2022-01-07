
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct object {int dummy; } ;
struct include_data {int bitmap_git; } ;
struct commit_list {struct commit_list* next; TYPE_2__* item; } ;
struct TYPE_6__ {int oid; } ;
struct commit {struct commit_list* parents; TYPE_3__ object; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_5__ {TYPE_1__ object; } ;


 int SEEN ;
 int add_to_include_set (int ,struct include_data*,int *,int) ;
 int bitmap_position (int ,int *) ;
 int ext_index_add_object (int ,struct object*,int *) ;

__attribute__((used)) static int should_include(struct commit *commit, void *_data)
{
 struct include_data *data = _data;
 int bitmap_pos;

 bitmap_pos = bitmap_position(data->bitmap_git, &commit->object.oid);
 if (bitmap_pos < 0)
  bitmap_pos = ext_index_add_object(data->bitmap_git,
        (struct object *)commit,
        ((void*)0));

 if (!add_to_include_set(data->bitmap_git, data, &commit->object.oid,
    bitmap_pos)) {
  struct commit_list *parent = commit->parents;

  while (parent) {
   parent->item->object.flags |= SEEN;
   parent = parent->next;
  }

  return 0;
 }

 return 1;
}
