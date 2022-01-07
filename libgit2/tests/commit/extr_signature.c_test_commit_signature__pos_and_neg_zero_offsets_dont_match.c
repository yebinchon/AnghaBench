
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_signature ;


 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int git_signature__equal (int *,int *) ;
 int git_signature_free (int *) ;
 int git_signature_from_buffer (int **,char*) ;

void test_commit_signature__pos_and_neg_zero_offsets_dont_match(void)
{
 git_signature *with_neg_zero;
 git_signature *with_pos_zero;

 cl_git_pass(git_signature_from_buffer(&with_neg_zero, "Test User <test@test.tt> 1461698487 -0000"));
 cl_git_pass(git_signature_from_buffer(&with_pos_zero, "Test User <test@test.tt> 1461698487 +0000"));

 cl_assert(!git_signature__equal(with_neg_zero, with_pos_zero));

 git_signature_free((git_signature *)with_neg_zero);
 git_signature_free((git_signature *)with_pos_zero);
}
