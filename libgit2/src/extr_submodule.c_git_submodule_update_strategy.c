
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ git_submodule_update_t ;
struct TYPE_4__ {scalar_t__ update; } ;
typedef TYPE_1__ git_submodule ;


 scalar_t__ GIT_SUBMODULE_UPDATE_CHECKOUT ;
 int assert (TYPE_1__*) ;

git_submodule_update_t git_submodule_update_strategy(git_submodule *submodule)
{
 assert(submodule);
 return (submodule->update < GIT_SUBMODULE_UPDATE_CHECKOUT) ?
  GIT_SUBMODULE_UPDATE_CHECKOUT : submodule->update;
}
