
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t _alloc_size; } ;
typedef TYPE_1__ git_vector ;


 int resize_vector (TYPE_1__*,size_t) ;

int git_vector_size_hint(git_vector *v, size_t size_hint)
{
 if (v->_alloc_size >= size_hint)
  return 0;
 return resize_vector(v, size_hint);
}
