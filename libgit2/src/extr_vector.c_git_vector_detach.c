
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void** contents; size_t length; size_t _alloc_size; } ;
typedef TYPE_1__ git_vector ;



void **git_vector_detach(size_t *size, size_t *asize, git_vector *v)
{
 void **data = v->contents;

 if (size)
  *size = v->length;
 if (asize)
  *asize = v->_alloc_size;

 v->_alloc_size = 0;
 v->length = 0;
 v->contents = ((void*)0);

 return data;
}
