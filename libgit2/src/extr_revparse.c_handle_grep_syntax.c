
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_revwalk ;
typedef int git_repository ;
typedef int git_regexp ;
typedef int git_oid ;
typedef int git_object ;


 int GIT_SORT_TIME ;
 int build_regex (int *,char const*) ;
 int git_regexp_dispose (int *) ;
 int git_revwalk_free (int *) ;
 int git_revwalk_new (int **,int *) ;
 int git_revwalk_push (int *,int const*) ;
 int git_revwalk_push_glob (int *,char*) ;
 int git_revwalk_sorting (int *,int ) ;
 int walk_and_search (int **,int *,int *) ;

__attribute__((used)) static int handle_grep_syntax(git_object **out, git_repository *repo, const git_oid *spec_oid, const char *pattern)
{
 git_regexp preg;
 git_revwalk *walk = ((void*)0);
 int error;

 if ((error = build_regex(&preg, pattern)) < 0)
  return error;

 if ((error = git_revwalk_new(&walk, repo)) < 0)
  goto cleanup;

 git_revwalk_sorting(walk, GIT_SORT_TIME);

 if (spec_oid == ((void*)0)) {
  if ((error = git_revwalk_push_glob(walk, "refs/*")) < 0)
   goto cleanup;
 } else if ((error = git_revwalk_push(walk, spec_oid)) < 0)
   goto cleanup;

 error = walk_and_search(out, walk, &preg);

cleanup:
 git_regexp_dispose(&preg);
 git_revwalk_free(walk);

 return error;
}
