
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int length; int _cmp; int contents; } ;
typedef TYPE_1__ git_vector ;


 int assert (TYPE_1__*) ;
 int git__tsort (int ,int,int ) ;
 scalar_t__ git_vector_is_sorted (TYPE_1__*) ;
 int git_vector_set_sorted (TYPE_1__*,int) ;

void git_vector_sort(git_vector *v)
{
 assert(v);

 if (git_vector_is_sorted(v) || !v->_cmp)
  return;

 if (v->length > 1)
  git__tsort(v->contents, v->length, v->_cmp);
 git_vector_set_sorted(v, 1);
}
