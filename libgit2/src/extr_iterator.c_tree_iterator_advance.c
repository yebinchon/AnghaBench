
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_3__ ;
typedef struct TYPE_30__ TYPE_2__ ;
typedef struct TYPE_29__ TYPE_24__ ;
typedef struct TYPE_28__ TYPE_1__ ;
typedef struct TYPE_27__ TYPE_18__ ;
typedef struct TYPE_26__ TYPE_16__ ;


struct TYPE_29__ {size_t length; TYPE_2__** contents; } ;
struct TYPE_28__ {size_t next_idx; TYPE_24__ entries; } ;
typedef TYPE_1__ tree_iterator_frame ;
struct TYPE_30__ {int tree_entry; } ;
typedef TYPE_2__ tree_iterator_entry ;
struct TYPE_26__ {int ptr; } ;
struct TYPE_27__ {int flags; } ;
struct TYPE_31__ {int entry; TYPE_16__ entry_path; TYPE_18__ base; } ;
typedef TYPE_3__ tree_iterator ;
typedef int git_iterator ;
typedef int git_index_entry ;


 int GIT_ITERATOR_FIRST_ACCESS ;
 int GIT_ITEROVER ;
 int git_tree_entry__is_tree (int ) ;
 int git_vector_is_sorted (TYPE_24__*) ;
 int git_vector_sort (TYPE_24__*) ;
 scalar_t__ iterator__do_autoexpand (TYPE_3__*) ;
 scalar_t__ iterator__ignore_case (TYPE_18__*) ;
 int iterator__include_trees (TYPE_3__*) ;
 scalar_t__ iterator_has_ended (TYPE_18__*,int ) ;
 int iterator_has_started (TYPE_18__*,int ,int) ;
 int iterator_pathlist_next_is (TYPE_18__*,int ) ;
 int tree_iterator_compute_path (TYPE_16__*,TYPE_2__*) ;
 TYPE_2__* tree_iterator_current_entry (TYPE_1__*) ;
 TYPE_1__* tree_iterator_current_frame (TYPE_3__*) ;
 scalar_t__ tree_iterator_entry_cmp_icase (TYPE_2__*,TYPE_2__*) ;
 int tree_iterator_frame_pop (TYPE_3__*) ;
 int tree_iterator_frame_push (TYPE_3__*,TYPE_2__*) ;
 int tree_iterator_set_current (TYPE_3__*,TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static int tree_iterator_advance(const git_index_entry **out, git_iterator *i)
{
 tree_iterator *iter = (tree_iterator *)i;
 int error = 0;

 iter->base.flags |= GIT_ITERATOR_FIRST_ACCESS;


 while (1) {
  tree_iterator_entry *prev_entry, *entry;
  tree_iterator_frame *frame;
  bool is_tree;

  if ((frame = tree_iterator_current_frame(iter)) == ((void*)0)) {
   error = GIT_ITEROVER;
   break;
  }


  if (frame->next_idx == frame->entries.length) {
   tree_iterator_frame_pop(iter);
   continue;
  }




  if (frame->next_idx == 0 && !git_vector_is_sorted(&frame->entries))
   git_vector_sort(&frame->entries);


  prev_entry = tree_iterator_current_entry(frame);
  entry = frame->entries.contents[frame->next_idx];
  frame->next_idx++;




  if (iterator__ignore_case(&iter->base) &&
   prev_entry &&
   tree_iterator_entry_cmp_icase(prev_entry, entry) == 0)
   continue;

  if ((error = tree_iterator_compute_path(&iter->entry_path, entry)) < 0)
   break;


  if (!iterator_has_started(&iter->base, iter->entry_path.ptr, 0))
   continue;


  if (iterator_has_ended(&iter->base, iter->entry_path.ptr)) {
   error = GIT_ITEROVER;
   break;
  }


  if (!iterator_pathlist_next_is(&iter->base, iter->entry_path.ptr))
   continue;

  is_tree = git_tree_entry__is_tree(entry->tree_entry);


  if (is_tree && !iterator__include_trees(iter)) {





   if (iterator__do_autoexpand(iter)) {
    if ((error = tree_iterator_frame_push(iter, entry)) < 0)
     break;
   }

   continue;
  }

  tree_iterator_set_current(iter, frame, entry);




  if (is_tree && iterator__do_autoexpand(iter))
   error = tree_iterator_frame_push(iter, entry);

  break;
 }

 if (out)
  *out = (error == 0) ? &iter->entry : ((void*)0);

 return error;
}
