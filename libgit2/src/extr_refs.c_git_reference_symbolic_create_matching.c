
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_signature ;
typedef int git_repository ;
typedef int git_reference ;


 int assert (char const*) ;
 int git_reference__log_signature (int **,int *) ;
 int git_signature_free (int *) ;
 int reference__create (int **,int *,char const*,int *,char const*,int,int *,char const*,int *,char const*) ;

int git_reference_symbolic_create_matching(
 git_reference **ref_out,
 git_repository *repo,
 const char *name,
 const char *target,
 int force,
 const char *old_target,
 const char *log_message)
{
 int error;
 git_signature *who = ((void*)0);

 assert(target);

 if ((error = git_reference__log_signature(&who, repo)) < 0)
  return error;

 error = reference__create(
  ref_out, repo, name, ((void*)0), target, force, who, log_message, ((void*)0), old_target);

 git_signature_free(who);
 return error;
}
