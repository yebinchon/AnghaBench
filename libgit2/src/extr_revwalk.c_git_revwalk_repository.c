
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * repo; } ;
typedef TYPE_1__ git_revwalk ;
typedef int git_repository ;


 int assert (TYPE_1__*) ;

git_repository *git_revwalk_repository(git_revwalk *walk)
{
 assert(walk);
 return walk->repo;
}
