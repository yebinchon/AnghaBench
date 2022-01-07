
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_branch_iterator ;
struct TYPE_3__ {int iter; } ;
typedef TYPE_1__ branch_iter ;


 int git__free (TYPE_1__*) ;
 int git_reference_iterator_free (int ) ;

void git_branch_iterator_free(git_branch_iterator *_iter)
{
 branch_iter *iter = (branch_iter *) _iter;

 if (iter == ((void*)0))
  return;

 git_reference_iterator_free(iter->iter);
 git__free(iter);
}
