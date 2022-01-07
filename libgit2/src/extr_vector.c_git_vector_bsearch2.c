
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ git_vector_cmp ;
struct TYPE_4__ {int length; int contents; int _cmp; } ;
typedef TYPE_1__ git_vector ;


 int assert (int) ;
 int git__bsearch (int ,int ,void const*,scalar_t__,size_t*) ;
 int git_vector_sort (TYPE_1__*) ;

int git_vector_bsearch2(
 size_t *at_pos,
 git_vector *v,
 git_vector_cmp key_lookup,
 const void *key)
{
 assert(v && key && key_lookup);


 if (!v->_cmp)
  return -1;

 git_vector_sort(v);

 return git__bsearch(v->contents, v->length, key, key_lookup, at_pos);
}
