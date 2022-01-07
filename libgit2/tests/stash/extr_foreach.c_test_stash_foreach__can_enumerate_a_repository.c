
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char** oids; scalar_t__ invokes; } ;


 int GIT_STASH_DEFAULT ;
 int GIT_STASH_INCLUDE_IGNORED ;
 int GIT_STASH_INCLUDE_UNTRACKED ;
 int REPO_NAME ;
 int callback_cb ;
 int cl_assert_equal_i (int,scalar_t__) ;
 int cl_git_pass (int ) ;
 TYPE_1__ data ;
 int git_repository_init (int *,int ,int ) ;
 int git_stash_foreach (int ,int ,TYPE_1__*) ;
 int git_stash_save (int *,int ,int ,int *,int ) ;
 int repo ;
 int setup_stash (int ,int ) ;
 int signature ;
 int stash_tip_oid ;

void test_stash_foreach__can_enumerate_a_repository(void)
{
 char *oids_default[] = {
  "493568b7a2681187aaac8a58d3f1eab1527cba84", ((void*)0) };

 char *oids_untracked[] = {
  "7f89a8b15c878809c5c54d1ff8f8c9674154017b",
  "493568b7a2681187aaac8a58d3f1eab1527cba84", ((void*)0) };

 char *oids_ignored[] = {
  "c95599a8fef20a7e57582c6727b1a0d02e0a5828",
  "7f89a8b15c878809c5c54d1ff8f8c9674154017b",
  "493568b7a2681187aaac8a58d3f1eab1527cba84", ((void*)0) };

 cl_git_pass(git_repository_init(&repo, REPO_NAME, 0));

 setup_stash(repo, signature);

 cl_git_pass(git_stash_save(
  &stash_tip_oid,
  repo,
  signature,
  ((void*)0),
  GIT_STASH_DEFAULT));

 data.oids = oids_default;

 cl_git_pass(git_stash_foreach(repo, callback_cb, &data));
 cl_assert_equal_i(1, data.invokes);


 cl_git_pass(git_stash_save(
  &stash_tip_oid,
  repo,
  signature,
  ((void*)0),
  GIT_STASH_INCLUDE_UNTRACKED));

 data.oids = oids_untracked;
 data.invokes = 0;

 cl_git_pass(git_stash_foreach(repo, callback_cb, &data));
 cl_assert_equal_i(2, data.invokes);


 cl_git_pass(git_stash_save(
  &stash_tip_oid,
  repo,
  signature,
  ((void*)0),
  GIT_STASH_INCLUDE_IGNORED));

 data.oids = oids_ignored;
 data.invokes = 0;

 cl_git_pass(git_stash_foreach(repo, callback_cb, &data));
 cl_assert_equal_i(3, data.invokes);
}
