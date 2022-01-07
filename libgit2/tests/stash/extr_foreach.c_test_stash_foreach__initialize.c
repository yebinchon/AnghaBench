
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct callback_data {int dummy; } ;


 int cl_git_pass (int ) ;
 int data ;
 int git_signature_new (int *,char*,char*,int,int) ;
 int memset (int *,int ,int) ;
 int signature ;

void test_stash_foreach__initialize(void)
{
 cl_git_pass(git_signature_new(
  &signature,
  "nulltoken",
  "emeric.fermas@gmail.com",
  1323847743, 60));

 memset(&data, 0, sizeof(struct callback_data));
}
