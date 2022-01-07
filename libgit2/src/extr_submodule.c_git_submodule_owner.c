
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * repo; } ;
typedef TYPE_1__ git_submodule ;
typedef int git_repository ;


 int assert (TYPE_1__*) ;

git_repository *git_submodule_owner(git_submodule *submodule)
{
 assert(submodule);
 return submodule->repo;
}
