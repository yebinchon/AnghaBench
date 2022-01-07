
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_revwalk ;
typedef int git_oid ;


 int git_revwalk_push (int *,int const*) ;
 int git_revwalk_sorting (int *,int) ;
 int test_walk_only (int *,int const**,int) ;

__attribute__((used)) static int test_walk(git_revwalk *walk, const git_oid *root,
  int flags, const int possible_results[][6], int results_count)
{
 git_revwalk_sorting(walk, flags);
 git_revwalk_push(walk, root);

 return test_walk_only(walk, possible_results, results_count);
}
