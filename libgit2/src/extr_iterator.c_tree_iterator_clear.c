
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ size; } ;
struct TYPE_5__ {int base; int entry_path; int entry_pool; TYPE_4__ frames; } ;
typedef TYPE_1__ tree_iterator ;


 int git_array_clear (TYPE_4__) ;
 int git_buf_clear (int *) ;
 int git_pool_clear (int *) ;
 int iterator_clear (int *) ;
 int tree_iterator_frame_pop (TYPE_1__*) ;

__attribute__((used)) static void tree_iterator_clear(tree_iterator *iter)
{
 while (iter->frames.size)
  tree_iterator_frame_pop(iter);

 git_array_clear(iter->frames);

 git_pool_clear(&iter->entry_pool);
 git_buf_clear(&iter->entry_path);

 iterator_clear(&iter->base);
}
