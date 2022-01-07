
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int email; int name; } ;
typedef TYPE_1__ git_signature ;


 int cl_assert_equal_s (char const*,int ) ;
 int cl_git_pass (int ) ;
 int git_signature_free (TYPE_1__*) ;
 int git_signature_new (TYPE_1__**,char const*,char const*,int,int) ;

__attribute__((used)) static void assert_name_and_email(
 const char *expected_name,
 const char *expected_email,
 const char *name,
 const char *email)
{
 git_signature *sign;

 cl_git_pass(git_signature_new(&sign, name, email, 1234567890, 60));
 cl_assert_equal_s(expected_name, sign->name);
 cl_assert_equal_s(expected_email, sign->email);

 git_signature_free(sign);
}
