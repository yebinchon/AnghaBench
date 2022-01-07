
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* namespace; } ;
typedef TYPE_1__ git_repository ;



const char *git_repository_get_namespace(git_repository *repo)
{
 return repo->namespace;
}
