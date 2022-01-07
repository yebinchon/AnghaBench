
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_vector ;
typedef int git_iterator ;
typedef int git_index_entry ;
typedef int checkout_data ;


 int GIT_ITEROVER ;
 int checkout_action_wd_only (int *,int *,int const**,int *) ;

__attribute__((used)) static int checkout_remaining_wd_items(
 checkout_data *data,
 git_iterator *workdir,
 const git_index_entry *wd,
 git_vector *spec)
{
 int error = 0;

 while (wd && !error)
  error = checkout_action_wd_only(data, workdir, &wd, spec);

 if (error == GIT_ITEROVER)
  error = 0;

 return error;
}
