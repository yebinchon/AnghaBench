
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * diff_drivers; } ;
typedef TYPE_1__ git_repository ;
typedef int git_diff_driver_registry ;


 int GIT_ERROR_REPOSITORY ;
 int * git__compare_and_swap (int **,int *,int *) ;
 int git_diff_driver_registry_free (int *) ;
 int * git_diff_driver_registry_new () ;
 int git_error_set (int ,char*) ;

__attribute__((used)) static git_diff_driver_registry *git_repository_driver_registry(
 git_repository *repo)
{
 if (!repo->diff_drivers) {
  git_diff_driver_registry *reg = git_diff_driver_registry_new();
  reg = git__compare_and_swap(&repo->diff_drivers, ((void*)0), reg);

  if (reg != ((void*)0))
   git_diff_driver_registry_free(reg);
 }

 if (!repo->diff_drivers)
  git_error_set(GIT_ERROR_REPOSITORY, "unable to create diff driver registry");

 return repo->diff_drivers;
}
