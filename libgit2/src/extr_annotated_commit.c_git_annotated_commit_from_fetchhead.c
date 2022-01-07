
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_repository ;
typedef int git_oid ;
struct TYPE_4__ {void* remote_url; void* ref_name; } ;
typedef TYPE_1__ git_annotated_commit ;


 int GIT_ERROR_CHECK_ALLOC (void*) ;
 scalar_t__ annotated_commit_init_from_id (TYPE_1__**,int *,int const*,char const*) ;
 int assert (int ) ;
 void* git__strdup (char const*) ;

int git_annotated_commit_from_fetchhead(
 git_annotated_commit **out,
 git_repository *repo,
 const char *branch_name,
 const char *remote_url,
 const git_oid *id)
{
 assert(repo && id && branch_name && remote_url);

 if (annotated_commit_init_from_id(out, repo, id, branch_name) < 0)
  return -1;

 (*out)->ref_name = git__strdup(branch_name);
 GIT_ERROR_CHECK_ALLOC((*out)->ref_name);

 (*out)->remote_url = git__strdup(remote_url);
 GIT_ERROR_CHECK_ALLOC((*out)->remote_url);

 return 0;
}
