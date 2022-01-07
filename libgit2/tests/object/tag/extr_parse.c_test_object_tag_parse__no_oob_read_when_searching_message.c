
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int message; } ;


 int assert_tag_fails (char const*,scalar_t__) ;
 int cl_assert (int ) ;
 TYPE_1__* git_error_last () ;
 scalar_t__ strlen (char const*) ;
 int strstr (int ,char*) ;

void test_object_tag_parse__no_oob_read_when_searching_message(void)
{
 const char *tag =
  "object a8d447f68076d1520f69649bb52629941be7031f\n"
  "type tag\n"
  "tag \n"
  "tagger <>\n"
  " \n\n"
  "Message";





 assert_tag_fails(tag, strlen(tag) - strlen("\n\nMessage"));
 cl_assert(strstr(git_error_last()->message, "tag contains no message"));
}
