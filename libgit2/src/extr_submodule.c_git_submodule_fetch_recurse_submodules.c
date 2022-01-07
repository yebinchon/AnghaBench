
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_submodule_recurse_t ;
struct TYPE_4__ {int fetch_recurse; } ;
typedef TYPE_1__ git_submodule ;


 int assert (TYPE_1__*) ;

git_submodule_recurse_t git_submodule_fetch_recurse_submodules(
 git_submodule *submodule)
{
 assert(submodule);
 return submodule->fetch_recurse;
}
