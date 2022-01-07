
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t length; int * contents; } ;
typedef TYPE_1__ git_vector ;


 int GIT_ENOTFOUND ;
 int assert (TYPE_1__*) ;
 int memmove (int *,int *,size_t) ;

int git_vector_remove(git_vector *v, size_t idx)
{
 size_t shift_count;

 assert(v);

 if (idx >= v->length)
  return GIT_ENOTFOUND;

 shift_count = v->length - idx - 1;

 if (shift_count)
  memmove(&v->contents[idx], &v->contents[idx + 1],
   shift_count * sizeof(void *));

 v->length--;
 return 0;
}
