
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* commondir; } ;
typedef TYPE_1__ git_repository ;


 int assert (TYPE_1__ const*) ;

const char *git_repository_commondir(const git_repository *repo)
{
 assert(repo);
 return repo->commondir;
}
