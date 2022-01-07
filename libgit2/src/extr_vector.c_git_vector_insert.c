
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int length; int _alloc_size; void** contents; } ;
typedef TYPE_1__ git_vector ;


 int assert (TYPE_1__*) ;
 int compute_new_size (TYPE_1__*) ;
 int git_vector_set_sorted (TYPE_1__*,int) ;
 scalar_t__ resize_vector (TYPE_1__*,int ) ;

int git_vector_insert(git_vector *v, void *element)
{
 assert(v);

 if (v->length >= v->_alloc_size &&
  resize_vector(v, compute_new_size(v)) < 0)
  return -1;

 v->contents[v->length++] = element;

 git_vector_set_sorted(v, v->length <= 1);

 return 0;
}
