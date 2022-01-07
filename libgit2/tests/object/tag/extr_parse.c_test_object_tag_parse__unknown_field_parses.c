
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_tag_parses (char const*,int ,char*,char*,char*,char*) ;

void test_object_tag_parse__unknown_field_parses(void)
{
 const char *tag =
  "object a8d447f68076d1520f69649bb52629941be7031f\n"
  "type tag\n"
  "tag tagname\n"
  "tagger Taggy Mr. Taggart <taggy@taggart.com>\n"
  "foo bar\n"
  "frubble frabble\n"
  "\n"
  "Message";
 assert_tag_parses(tag, 0,
  "a8d447f68076d1520f69649bb52629941be7031f",
  "tagname",
  "Taggy Mr. Taggart <taggy@taggart.com>",
  "Message");
}
