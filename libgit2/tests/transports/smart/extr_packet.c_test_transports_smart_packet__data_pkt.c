
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_data_pkt_parses (char*,char*,int) ;
 int assert_pkt_fails (char*) ;

void test_transports_smart_packet__data_pkt(void)
{
 assert_pkt_fails("000foobar");
 assert_pkt_fails("0001o");
 assert_pkt_fails("0001\1");
 assert_data_pkt_parses("0005\1", "", 0);
 assert_pkt_fails("0009\1o");
 assert_data_pkt_parses("0009\1data", "data", 4);
 assert_data_pkt_parses("000a\1data", "data", 5);
}
