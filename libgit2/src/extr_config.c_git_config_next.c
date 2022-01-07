
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* next ) (int **,TYPE_1__*) ;} ;
typedef TYPE_1__ git_config_iterator ;
typedef int git_config_entry ;


 int stub1 (int **,TYPE_1__*) ;

int git_config_next(git_config_entry **entry, git_config_iterator *iter)
{
 return iter->next(entry, iter);
}
