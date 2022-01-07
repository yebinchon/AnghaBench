
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int length; void** contents; } ;
typedef TYPE_1__ git_vector ;
typedef int git_revwalk ;
typedef int git_repository ;
typedef int git_oid ;
typedef int git_commit_list_node ;
typedef int git_commit_list ;


 int GIT_ENOTFOUND ;
 int GIT_ERROR_MERGE ;
 int git_error_set (int ,char*) ;
 scalar_t__ git_merge__bases_many (int **,int *,int *,TYPE_1__*) ;
 int * git_revwalk__commit_lookup (int *,int const*) ;
 int git_revwalk_free (int *) ;
 scalar_t__ git_revwalk_new (int **,int *) ;
 int memset (TYPE_1__*,int,int) ;

__attribute__((used)) static int merge_bases(git_commit_list **out, git_revwalk **walk_out, git_repository *repo, const git_oid *one, const git_oid *two)
{
 git_revwalk *walk;
 git_vector list;
 git_commit_list *result = ((void*)0);
 git_commit_list_node *commit;
 void *contents[1];

 if (git_revwalk_new(&walk, repo) < 0)
  return -1;

 commit = git_revwalk__commit_lookup(walk, two);
 if (commit == ((void*)0))
  goto on_error;


 memset(&list, 0x0, sizeof(git_vector));
 contents[0] = commit;
 list.length = 1;
 list.contents = contents;

 commit = git_revwalk__commit_lookup(walk, one);
 if (commit == ((void*)0))
  goto on_error;

 if (git_merge__bases_many(&result, walk, commit, &list) < 0)
  goto on_error;

 if (!result) {
  git_revwalk_free(walk);
  git_error_set(GIT_ERROR_MERGE, "no merge base found");
  return GIT_ENOTFOUND;
 }

 *out = result;
 *walk_out = walk;

 return 0;

on_error:
 git_revwalk_free(walk);
 return -1;

}
