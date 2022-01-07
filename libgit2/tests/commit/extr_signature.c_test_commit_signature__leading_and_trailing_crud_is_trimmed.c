
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_name_and_email (char*,char*,char*,char*) ;

void test_commit_signature__leading_and_trailing_crud_is_trimmed(void)
{
 assert_name_and_email("nulltoken", "emeric.fermas@gmail.com", "\"nulltoken\"", "\"emeric.fermas@gmail.com\"");
 assert_name_and_email("nulltoken w", "emeric.fermas@gmail.com", "nulltoken w.", "emeric.fermas@gmail.com");
 assert_name_and_email("nulltoken \xe2\x98\xba", "emeric.fermas@gmail.com", "nulltoken \xe2\x98\xba", "emeric.fermas@gmail.com");
}
