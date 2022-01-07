
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_nak_parses (char*) ;
 int assert_pkt_fails (char*) ;

void test_transports_smart_packet__nak_pkt(void)
{
 assert_nak_parses("0007NAK");
 assert_pkt_fails("0007NaK");
 assert_pkt_fails("0007nak");
 assert_nak_parses("0007NAKfoobar");
 assert_pkt_fails("0007nakfoobar");
 assert_pkt_fails("0007 NAK");
}
