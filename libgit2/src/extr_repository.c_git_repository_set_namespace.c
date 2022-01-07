
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * namespace; } ;
typedef TYPE_1__ git_repository ;


 int git__free (int *) ;
 int * git__strdup (char const*) ;

int git_repository_set_namespace(git_repository *repo, const char *namespace)
{
 git__free(repo->namespace);

 if (namespace == ((void*)0)) {
  repo->namespace = ((void*)0);
  return 0;
 }

 return (repo->namespace = git__strdup(namespace)) ? 0 : -1;
}
