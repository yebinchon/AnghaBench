
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;


 int _repo ;
 int cl_git_pass (int ) ;
 int git_merge_base (int *,int ,int *,int *) ;
 int git_oid_fromstr (int *,char*) ;

void test_revwalk_mergebase__no_off_by_one_missing(void)
{
 git_oid result, one, two;

 cl_git_pass(git_oid_fromstr(&one, "1a443023183e3f2bfbef8ac923cd81c1018a18fd"));
 cl_git_pass(git_oid_fromstr(&two, "9f13f7d0a9402c681f91dc590cf7b5470e6a77d2"));
 cl_git_pass(git_merge_base(&result, _repo, &one, &two));
}
