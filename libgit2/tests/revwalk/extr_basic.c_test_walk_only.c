
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_revwalk ;
typedef int git_oid ;


 int GIT_ERROR ;
 int commit_count ;
 int get_commit_index (int *) ;
 scalar_t__ git_revwalk_next (int *,int *) ;
 scalar_t__ memcmp (int const*,int*,int ) ;
 int result_bytes ;

__attribute__((used)) static int test_walk_only(git_revwalk *walk,
  const int possible_results[][commit_count], int results_count)
{
 git_oid oid;
 int i;
 int result_array[commit_count];

 for (i = 0; i < commit_count; ++i)
  result_array[i] = -1;

 i = 0;
 while (git_revwalk_next(&oid, walk) == 0) {
  result_array[i++] = get_commit_index(&oid);






 }

 for (i = 0; i < results_count; ++i)
  if (memcmp(possible_results[i],
    result_array, result_bytes) == 0)
   return 0;

 return GIT_ERROR;
}
