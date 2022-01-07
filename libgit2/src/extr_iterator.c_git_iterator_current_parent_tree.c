
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * tree; } ;
typedef TYPE_2__ tree_iterator_frame ;
struct TYPE_6__ {size_t size; TYPE_2__* ptr; } ;
struct TYPE_8__ {TYPE_1__ frames; } ;
typedef TYPE_3__ tree_iterator ;
typedef int git_tree ;
struct TYPE_9__ {scalar_t__ type; } ;
typedef TYPE_4__ git_iterator ;


 scalar_t__ GIT_ITERATOR_TYPE_TREE ;
 int assert (int) ;

int git_iterator_current_parent_tree(
 const git_tree **parent_tree, git_iterator *i, size_t depth)
{
 tree_iterator *iter;
 tree_iterator_frame *frame;

 assert(i->type == GIT_ITERATOR_TYPE_TREE);

 iter = (tree_iterator *)i;

 assert(depth < iter->frames.size);
 frame = &iter->frames.ptr[iter->frames.size-depth-1];

 *parent_tree = frame->tree;
 return 0;
}
