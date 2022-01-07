
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_tag_fails (char const*,int ) ;

void test_object_tag_parse__missing_object_fails(void)
{
 const char *tag =
  "type tag\n"
  "tag tagname\n"
  "tagger Taggy Mr. Taggart <taggy@taggart.com>\n"
  "\n"
  "Message";
 assert_tag_fails(tag, 0);
}
