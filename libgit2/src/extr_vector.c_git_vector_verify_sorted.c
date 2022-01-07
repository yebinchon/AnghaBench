
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t length; scalar_t__ (* _cmp ) (int ,int ) ;int * contents; } ;
typedef TYPE_1__ git_vector ;


 int git_vector_is_sorted (TYPE_1__ const*) ;
 scalar_t__ stub1 (int ,int ) ;

int git_vector_verify_sorted(const git_vector *v)
{
 size_t i;

 if (!git_vector_is_sorted(v))
  return -1;

 for (i = 1; i < v->length; ++i) {
  if (v->_cmp(v->contents[i - 1], v->contents[i]) > 0)
   return -1;
 }

 return 0;
}
