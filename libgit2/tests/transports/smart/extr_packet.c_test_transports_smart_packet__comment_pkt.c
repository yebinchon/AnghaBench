
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_comment_parses (char*,char*) ;

void test_transports_smart_packet__comment_pkt(void)
{
 assert_comment_parses("0005#", "");
 assert_comment_parses("000B#foobar", "#fooba");
 assert_comment_parses("000C#foobar", "#foobar");
 assert_comment_parses("001A#this is a comment\nfoo", "#this is a comment\nfoo");
}
