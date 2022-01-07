
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;


 int ARRAY_SIZE (char const**) ;
 char const* GIT_MERGE_MSG_FILE ;
 char const* GIT_REVERT_HEAD_FILE ;
 int git_repository__cleanup_files (int *,char const**,int ) ;

__attribute__((used)) static int revert_state_cleanup(git_repository *repo)
{
 const char *state_files[] = { GIT_REVERT_HEAD_FILE, GIT_MERGE_MSG_FILE };

 return git_repository__cleanup_files(repo, state_files, ARRAY_SIZE(state_files));
}
