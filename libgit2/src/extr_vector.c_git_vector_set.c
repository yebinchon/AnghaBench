
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t length; void** contents; } ;
typedef TYPE_1__ git_vector ;


 scalar_t__ git_vector_resize_to (TYPE_1__*,size_t) ;

int git_vector_set(void **old, git_vector *v, size_t position, void *value)
{
 if (position + 1 > v->length) {
  if (git_vector_resize_to(v, position + 1) < 0)
   return -1;
 }

 if (old != ((void*)0))
  *old = v->contents[position];

 v->contents[position] = value;

 return 0;
}
