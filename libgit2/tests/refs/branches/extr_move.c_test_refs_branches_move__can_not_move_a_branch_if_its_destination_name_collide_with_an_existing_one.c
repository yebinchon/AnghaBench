
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int git_reference ;
typedef int git_config ;
typedef int git_buf ;
struct TYPE_2__ {int * message; } ;


 int GIT_BUF_INIT ;
 int GIT_EEXISTS ;
 int cl_assert (int ) ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_assert_equal_s (char*,char const*) ;
 int cl_git_pass (int ) ;
 int git__free (char*) ;
 int git_branch_move (int **,int *,char*,int ) ;
 char* git_buf_detach (int *) ;
 int git_config_free (int *) ;
 int git_config_get_string (char const**,int *,char*) ;
 int git_config_get_string_buf (int *,int *,char*) ;
 TYPE_1__* git_error_last () ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int ,char*) ;
 int git_repository_config_snapshot (int **,int ) ;
 int repo ;

void test_refs_branches_move__can_not_move_a_branch_if_its_destination_name_collide_with_an_existing_one(void)
{
 git_reference *original_ref, *new_ref;
 git_config *config;
 git_buf buf = GIT_BUF_INIT;
 char *original_remote, *original_merge;
 const char *str;

 cl_git_pass(git_repository_config_snapshot(&config, repo));

 cl_git_pass(git_config_get_string_buf(&buf, config, "branch.master.remote"));
 original_remote = git_buf_detach(&buf);
 cl_git_pass(git_config_get_string_buf(&buf, config, "branch.master.merge"));
 original_merge = git_buf_detach(&buf);
 git_config_free(config);

 cl_git_pass(git_reference_lookup(&original_ref, repo, "refs/heads/br2"));

 cl_assert_equal_i(GIT_EEXISTS,
  git_branch_move(&new_ref, original_ref, "master", 0));

 cl_assert(git_error_last()->message != ((void*)0));

 cl_git_pass(git_repository_config_snapshot(&config, repo));
 cl_git_pass(git_config_get_string(&str, config, "branch.master.remote"));
 cl_assert_equal_s(original_remote, str);
 cl_git_pass(git_config_get_string(&str, config, "branch.master.merge"));
 cl_assert_equal_s(original_merge, str);
 git_config_free(config);

 cl_assert_equal_i(GIT_EEXISTS,
  git_branch_move(&new_ref, original_ref, "cannot-fetch", 0));

 cl_assert(git_error_last()->message != ((void*)0));

 cl_git_pass(git_repository_config_snapshot(&config, repo));
 cl_git_pass(git_config_get_string(&str, config, "branch.master.remote"));
 cl_assert_equal_s(original_remote, str);
 cl_git_pass(git_config_get_string(&str, config, "branch.master.merge"));
 cl_assert_equal_s(original_merge, str);
 git_config_free(config);

 git_reference_free(original_ref);
 cl_git_pass(git_reference_lookup(&original_ref, repo, "refs/heads/track-local"));

 cl_assert_equal_i(GIT_EEXISTS,
  git_branch_move(&new_ref, original_ref, "master", 0));

 cl_assert(git_error_last()->message != ((void*)0));

 cl_git_pass(git_repository_config_snapshot(&config, repo));
 cl_git_pass(git_config_get_string(&str, config, "branch.master.remote"));
 cl_assert_equal_s(original_remote, str);
 cl_git_pass(git_config_get_string(&str, config, "branch.master.merge"));
 cl_assert_equal_s(original_merge, str);

 git__free(original_remote); git__free(original_merge);
 git_reference_free(original_ref);
 git_config_free(config);
}
