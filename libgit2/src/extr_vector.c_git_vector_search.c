
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ _cmp; } ;
typedef TYPE_1__ git_vector ;


 int git_vector_search2 (size_t*,TYPE_1__ const*,scalar_t__,void const*) ;
 scalar_t__ strict_comparison ;

int git_vector_search(size_t *at_pos, const git_vector *v, const void *entry)
{
 return git_vector_search2(at_pos, v, v->_cmp ? v->_cmp : strict_comparison, entry);
}
