
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t length; int * contents; } ;
typedef TYPE_1__ git_vector ;


 int assert (int) ;
 scalar_t__ git__add_sizet_overflow (size_t*,size_t,size_t) ;
 int memmove (int *,int *,int) ;
 int memset (int *,int ,int) ;

int git_vector_remove_range(git_vector *v, size_t idx, size_t remove_len)
{
 size_t new_length = v->length - remove_len;
 size_t end_idx = 0;

 assert(remove_len > 0);

 if (git__add_sizet_overflow(&end_idx, idx, remove_len))
  assert(0);

 assert(end_idx <= v->length);

 if (end_idx < v->length)
  memmove(&v->contents[idx], &v->contents[end_idx],
   sizeof(void *) * (v->length - end_idx));

 memset(&v->contents[new_length], 0, sizeof(void *) * remove_len);

 v->length = new_length;
 return 0;
}
