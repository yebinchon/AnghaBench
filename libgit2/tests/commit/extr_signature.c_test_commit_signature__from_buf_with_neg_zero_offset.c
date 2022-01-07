
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sign; int offset; int time; } ;
struct TYPE_6__ {TYPE_1__ when; int email; int name; } ;
typedef TYPE_2__ git_signature ;


 int cl_assert_equal_i (char,int ) ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_git_pass (int ) ;
 int git_signature_free (TYPE_2__*) ;
 int git_signature_from_buffer (TYPE_2__**,char*) ;

void test_commit_signature__from_buf_with_neg_zero_offset(void)
{
 git_signature *sign;

 cl_git_pass(git_signature_from_buffer(&sign, "Test User <test@test.tt> 1461698487 -0000"));
 cl_assert_equal_s("Test User", sign->name);
 cl_assert_equal_s("test@test.tt", sign->email);
 cl_assert_equal_i(1461698487, sign->when.time);
 cl_assert_equal_i(0, sign->when.offset);
 cl_assert_equal_i('-', sign->when.sign);
 git_signature_free(sign);
}
