
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int (* git_vector_cmp ) (void*,void*) ;
struct TYPE_4__ {int length; void** contents; int (* _cmp ) (void*,void*) ;} ;
typedef TYPE_1__ git_vector ;


 int git_vector_sort (TYPE_1__*) ;
 int strict_comparison (void*,void*) ;

void git_vector_uniq(git_vector *v, void (*git_free_cb)(void *))
{
 git_vector_cmp cmp;
 size_t i, j;

 if (v->length <= 1)
  return;

 git_vector_sort(v);
 cmp = v->_cmp ? v->_cmp : strict_comparison;

 for (i = 0, j = 1 ; j < v->length; ++j)
  if (!cmp(v->contents[i], v->contents[j])) {
   if (git_free_cb)
    git_free_cb(v->contents[i]);

   v->contents[i] = v->contents[j];
  } else
   v->contents[++i] = v->contents[j];

 v->length -= j - i - 1;
}
