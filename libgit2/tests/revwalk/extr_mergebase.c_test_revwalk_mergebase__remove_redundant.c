
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_repository ;
struct TYPE_4__ {int * ids; int count; int member_1; int * member_0; } ;
typedef TYPE_1__ git_oidarray ;
typedef int git_oid ;


 int cl_assert_equal_i (int,int ) ;
 int cl_assert_equal_oid (int *,int *) ;
 int cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 int git_merge_bases (TYPE_1__*,int *,int *,int *) ;
 int git_oid_fromstr (int *,char*) ;
 int git_oidarray_free (TYPE_1__*) ;
 int git_repository_free (int *) ;
 int git_repository_open (int **,int ) ;

void test_revwalk_mergebase__remove_redundant(void)
{
 git_repository *repo;
 git_oid one, two, base;
 git_oidarray result = {((void*)0), 0};

 cl_git_pass(git_repository_open(&repo, cl_fixture("redundant.git")));

 cl_git_pass(git_oid_fromstr(&one, "d89137c93ba1ee749214ff4ce52ae9137bc833f9"));
 cl_git_pass(git_oid_fromstr(&two, "91f4b95df4a59504a9813ba66912562931d990e3"));
 cl_git_pass(git_oid_fromstr(&base, "6cb1f2352d974e1c5a776093017e8772416ac97a"));

 cl_git_pass(git_merge_bases(&result, repo, &one, &two));
 cl_assert_equal_i(1, result.count);
 cl_assert_equal_oid(&base, &result.ids[0]);

 git_oidarray_free(&result);
 git_repository_free(repo);
}
