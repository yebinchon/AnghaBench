
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {size_t length; size_t _alloc_size; void** contents; scalar_t__ _cmp; } ;
typedef TYPE_1__ git_vector ;


 int assert (int) ;
 int compute_new_size (TYPE_1__*) ;
 int git__bsearch (void**,size_t,void*,scalar_t__,size_t*) ;
 int git_vector_is_sorted (TYPE_1__*) ;
 int git_vector_sort (TYPE_1__*) ;
 int memmove (void**,void**,size_t) ;
 scalar_t__ resize_vector (TYPE_1__*,int ) ;

int git_vector_insert_sorted(
 git_vector *v, void *element, int (*on_dup)(void **old, void *new))
{
 int result;
 size_t pos;

 assert(v && v->_cmp);

 if (!git_vector_is_sorted(v))
  git_vector_sort(v);

 if (v->length >= v->_alloc_size &&
  resize_vector(v, compute_new_size(v)) < 0)
  return -1;





 if (!git__bsearch(v->contents, v->length, element, v->_cmp, &pos) &&
  on_dup && (result = on_dup(&v->contents[pos], element)) < 0)
  return result;


 if (pos < v->length)
  memmove(v->contents + pos + 1, v->contents + pos,
          (v->length - pos) * sizeof(void *));

 v->contents[pos] = element;
 v->length++;

 return 0;
}
