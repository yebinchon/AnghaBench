
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ident_email; int ident_name; } ;
typedef TYPE_1__ git_repository ;


 int GIT_ERROR_CHECK_ALLOC (char*) ;
 int git__free (char*) ;
 char* git__strdup (char const*) ;
 char* git__swap (int ,char*) ;

int git_repository_set_ident(git_repository *repo, const char *name, const char *email)
{
 char *tmp_name = ((void*)0), *tmp_email = ((void*)0);

 if (name) {
  tmp_name = git__strdup(name);
  GIT_ERROR_CHECK_ALLOC(tmp_name);
 }

 if (email) {
  tmp_email = git__strdup(email);
  GIT_ERROR_CHECK_ALLOC(tmp_email);
 }

 tmp_name = git__swap(repo->ident_name, tmp_name);
 tmp_email = git__swap(repo->ident_email, tmp_email);

 git__free(tmp_name);
 git__free(tmp_email);

 return 0;
}
