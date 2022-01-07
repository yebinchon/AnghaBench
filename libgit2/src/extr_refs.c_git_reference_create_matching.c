
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_signature ;
typedef int git_repository ;
typedef int git_reference ;
typedef int git_oid ;


 int assert (int const*) ;
 int git_reference__log_signature (int **,int *) ;
 int git_signature_free (int *) ;
 int reference__create (int **,int *,char const*,int const*,int *,int,int *,char const*,int const*,int *) ;

int git_reference_create_matching(
 git_reference **ref_out,
 git_repository *repo,
 const char *name,
 const git_oid *id,
 int force,
 const git_oid *old_id,
 const char *log_message)

{
 int error;
 git_signature *who = ((void*)0);

 assert(id);

 if ((error = git_reference__log_signature(&who, repo)) < 0)
  return error;

 error = reference__create(
  ref_out, repo, name, id, ((void*)0), force, who, log_message, old_id, ((void*)0));

 git_signature_free(who);
 return error;
}
