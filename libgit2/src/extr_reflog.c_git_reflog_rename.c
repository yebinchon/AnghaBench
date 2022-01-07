
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_repository ;
struct TYPE_4__ {TYPE_2__* backend; } ;
typedef TYPE_1__ git_refdb ;
struct TYPE_5__ {int (* reflog_rename ) (TYPE_2__*,char const*,char const*) ;} ;


 int git_repository_refdb__weakptr (TYPE_1__**,int *) ;
 int stub1 (TYPE_2__*,char const*,char const*) ;

int git_reflog_rename(git_repository *repo, const char *old_name, const char *new_name)
{
 git_refdb *refdb;
 int error;

 if ((error = git_repository_refdb__weakptr(&refdb, repo)) < 0)
  return -1;

 return refdb->backend->reflog_rename(refdb->backend, old_name, new_name);
}
