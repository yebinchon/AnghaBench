
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_pkt_fails (char*) ;

void test_transports_smart_packet__parsing_garbage_fails(void)
{
 assert_pkt_fails("0foobar");
 assert_pkt_fails("00foobar");
 assert_pkt_fails("000foobar");
 assert_pkt_fails("0001");
 assert_pkt_fails("");
 assert_pkt_fails("0");
 assert_pkt_fails("0i00");
 assert_pkt_fails("f");
}
