
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tree_iterator_entry ;
struct TYPE_5__ {int flags; } ;
struct TYPE_6__ {TYPE_1__ base; int root; int entry_pool; } ;
typedef TYPE_2__ tree_iterator ;


 int GIT_ITERATOR_FIRST_ACCESS ;
 int git_pool_init (int *,int) ;
 int tree_iterator_frame_init (TYPE_2__*,int ,int *) ;

__attribute__((used)) static int tree_iterator_init(tree_iterator *iter)
{
 int error;

 git_pool_init(&iter->entry_pool, sizeof(tree_iterator_entry));

 if ((error = tree_iterator_frame_init(iter, iter->root, ((void*)0))) < 0)
  return error;

 iter->base.flags &= ~GIT_ITERATOR_FIRST_ACCESS;

 return 0;
}
