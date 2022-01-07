
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tree_iterator_frame ;
struct TYPE_5__ {int * tree_entry; } ;
typedef TYPE_1__ tree_iterator_entry ;
typedef int tree_iterator ;
typedef int git_tree_entry ;
struct TYPE_6__ {scalar_t__ type; } ;
typedef TYPE_2__ git_iterator ;


 scalar_t__ GIT_ITERATOR_TYPE_TREE ;
 int assert (int) ;
 TYPE_1__* tree_iterator_current_entry (int *) ;
 int * tree_iterator_current_frame (int *) ;

int git_iterator_current_tree_entry(
 const git_tree_entry **tree_entry, git_iterator *i)
{
 tree_iterator *iter;
 tree_iterator_frame *frame;
 tree_iterator_entry *entry;

 assert(i->type == GIT_ITERATOR_TYPE_TREE);

 iter = (tree_iterator *)i;

 frame = tree_iterator_current_frame(iter);
 entry = tree_iterator_current_entry(frame);

 *tree_entry = entry->tree_entry;
 return 0;
}
