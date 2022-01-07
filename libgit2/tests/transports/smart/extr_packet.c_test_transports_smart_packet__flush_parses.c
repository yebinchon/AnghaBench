
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_flush_parses (char*) ;

void test_transports_smart_packet__flush_parses(void)
{
 assert_flush_parses("0000");
 assert_flush_parses("0000foobar");
}
