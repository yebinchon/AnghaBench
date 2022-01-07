
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;
typedef int git_diff_stats ;
typedef int git_diff ;
typedef int git_commit ;


 int _repo ;
 int cl_git_pass (int ) ;
 int git_commit_free (int *) ;
 int git_commit_lookup (int **,int ,int *) ;
 int git_diff__commit (int **,int ,int *,int *) ;
 int git_diff_find_similar (int *,int *) ;
 int git_diff_free (int *) ;
 int git_diff_get_stats (int **,int *) ;
 int git_oid_fromstr (int *,char const*) ;

__attribute__((used)) static void diff_stats_from_commit_oid(
 git_diff_stats **stats, const char *oidstr, bool rename)
{
 git_oid oid;
 git_commit *commit;
 git_diff *diff;

 git_oid_fromstr(&oid, oidstr);
 cl_git_pass(git_commit_lookup(&commit, _repo, &oid));
 cl_git_pass(git_diff__commit(&diff, _repo, commit, ((void*)0)));
 if (rename)
  cl_git_pass(git_diff_find_similar(diff, ((void*)0)));
 cl_git_pass(git_diff_get_stats(stats, diff));

 git_diff_free(diff);
 git_commit_free(commit);
}
