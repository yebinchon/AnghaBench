
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_tag_fails (char const*,int ) ;

void test_object_tag_parse__missing_message_fails(void)
{
 const char *tag =
  "object a8d447f68076d1520f69649bb52629941be7031f\n"
  "type tag\n"
  "tag Tag\n"
  "tagger taggy@taggart.com>\n";
 assert_tag_fails(tag, 0);
}
