
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tree_iterator_frame ;
struct TYPE_4__ {int tree_entry; } ;
typedef TYPE_1__ tree_iterator_entry ;
typedef int tree_iterator ;
typedef int git_iterator ;
typedef int git_index_entry ;


 int GIT_ITEROVER ;
 int assert (int) ;
 int git_tree_entry__is_tree (int ) ;
 int iterator__do_autoexpand (int *) ;
 int tree_iterator_advance (int const**,int *) ;
 TYPE_1__* tree_iterator_current_entry (int *) ;
 int * tree_iterator_current_frame (int *) ;
 int tree_iterator_frame_push (int *,TYPE_1__*) ;

__attribute__((used)) static int tree_iterator_advance_into(
 const git_index_entry **out, git_iterator *i)
{
 tree_iterator *iter = (tree_iterator *)i;
    tree_iterator_frame *frame;
 tree_iterator_entry *prev_entry;
 int error;

 if (out)
  *out = ((void*)0);

 if ((frame = tree_iterator_current_frame(iter)) == ((void*)0))
  return GIT_ITEROVER;


 prev_entry = tree_iterator_current_entry(frame);





 assert(iterator__do_autoexpand(i) ^ (prev_entry != ((void*)0)));

 if (prev_entry) {
  if (!git_tree_entry__is_tree(prev_entry->tree_entry))
   return 0;

  if ((error = tree_iterator_frame_push(iter, prev_entry)) < 0)
   return error;
 }




 return tree_iterator_advance(out, i);
}
