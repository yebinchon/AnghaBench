
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t _alloc_size; size_t length; int * contents; } ;
typedef TYPE_1__ git_vector ;


 int memset (int *,int ,int) ;
 scalar_t__ resize_vector (TYPE_1__*,size_t) ;

int git_vector_resize_to(git_vector *v, size_t new_length)
{
 if (new_length > v->_alloc_size &&
  resize_vector(v, new_length) < 0)
  return -1;

 if (new_length > v->length)
  memset(&v->contents[v->length], 0,
   sizeof(void *) * (new_length - v->length));

 v->length = new_length;

 return 0;
}
