
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_OBJECT_COMMIT ;
 int GIT_STASH_DEFAULT ;
 int assert_object_oid (char*,int *,int ) ;
 int cl_git_pass (int ) ;
 int * git_oid_tostr_s (int *) ;
 int git_stash_save (int *,int ,int ,int *,int ) ;
 int repo ;
 int signature ;
 int stash_tip_oid ;

void test_stash_save__stashing_updates_the_reflog(void)
{
 assert_object_oid("refs/stash@{0}", ((void*)0), GIT_OBJECT_COMMIT);

 cl_git_pass(git_stash_save(&stash_tip_oid, repo, signature, ((void*)0), GIT_STASH_DEFAULT));

 assert_object_oid("refs/stash@{0}", git_oid_tostr_s(&stash_tip_oid), GIT_OBJECT_COMMIT);
 assert_object_oid("refs/stash@{1}", ((void*)0), GIT_OBJECT_COMMIT);
}
