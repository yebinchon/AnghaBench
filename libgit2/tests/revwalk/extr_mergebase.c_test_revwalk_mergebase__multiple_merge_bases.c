
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * ids; int count; int member_1; int * member_0; } ;
typedef TYPE_1__ git_oidarray ;
typedef int git_oid ;


 int _repo ;
 int cl_assert_equal_i (int,int ) ;
 int cl_assert_equal_oid (int *,int *) ;
 int cl_git_pass (int ) ;
 int git_merge_bases (TYPE_1__*,int ,int *,int *) ;
 int git_oid_fromstr (int *,char*) ;
 int git_oidarray_free (TYPE_1__*) ;

void test_revwalk_mergebase__multiple_merge_bases(void)
{
 git_oid one, two, expected1, expected2;
 git_oidarray result = {((void*)0), 0};

 cl_git_pass(git_oid_fromstr(&one, "a4a7dce85cf63874e984719f4fdd239f5145052f"));
 cl_git_pass(git_oid_fromstr(&two, "be3563ae3f795b2b4353bcce3a527ad0a4f7f644"));
 cl_git_pass(git_oid_fromstr(&expected1, "c47800c7266a2be04c571c04d5a6614691ea99bd"));
 cl_git_pass(git_oid_fromstr(&expected2, "9fd738e8f7967c078dceed8190330fc8648ee56a"));

 cl_git_pass(git_merge_bases(&result, _repo, &one, &two));
 cl_assert_equal_i(2, result.count);
 cl_assert_equal_oid(&expected1, &result.ids[0]);
 cl_assert_equal_oid(&expected2, &result.ids[1]);

 git_oidarray_free(&result);
}
