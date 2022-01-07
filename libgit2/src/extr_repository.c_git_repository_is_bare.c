
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int is_bare; } ;
typedef TYPE_1__ git_repository ;


 int assert (TYPE_1__ const*) ;

int git_repository_is_bare(const git_repository *repo)
{
 assert(repo);
 return repo->is_bare;
}
