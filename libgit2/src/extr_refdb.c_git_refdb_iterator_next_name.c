
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* next_name ) (char const**,TYPE_1__*) ;} ;
typedef TYPE_1__ git_reference_iterator ;


 int stub1 (char const**,TYPE_1__*) ;

int git_refdb_iterator_next_name(const char **out, git_reference_iterator *iter)
{
 return iter->next_name(out, iter);
}
