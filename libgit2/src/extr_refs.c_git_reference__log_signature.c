
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_signature ;
typedef int git_repository ;


 int configured_ident (int **,int *) ;
 int git_signature_default (int **,int *) ;
 int git_signature_now (int **,char*,char*) ;

int git_reference__log_signature(git_signature **out, git_repository *repo)
{
 int error;
 git_signature *who;

 if(((error = configured_ident(&who, repo)) < 0) &&
    ((error = git_signature_default(&who, repo)) < 0) &&
    ((error = git_signature_now(&who, "unknown", "unknown")) < 0))
  return error;

 *out = who;
 return 0;
}
