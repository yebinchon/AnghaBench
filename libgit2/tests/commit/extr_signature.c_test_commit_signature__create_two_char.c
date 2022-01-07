
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_name_and_email (char*,char*,char*,char*) ;

void test_commit_signature__create_two_char(void)
{

 assert_name_and_email("xx", "foo@bar.baz", "xx", "foo@bar.baz");
}
