
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* workdir; scalar_t__ is_bare; } ;
typedef TYPE_1__ git_repository ;


 int assert (TYPE_1__ const*) ;

const char *git_repository_workdir(const git_repository *repo)
{
 assert(repo);

 if (repo->is_bare)
  return ((void*)0);

 return repo->workdir;
}
