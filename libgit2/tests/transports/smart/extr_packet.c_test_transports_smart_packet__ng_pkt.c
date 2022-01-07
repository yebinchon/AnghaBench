
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_ng_parses (char*,char*,char*) ;
 int assert_pkt_fails (char*) ;

void test_transports_smart_packet__ng_pkt(void)
{

 assert_pkt_fails("0007ng\n");
 assert_pkt_fails("0008ng \n");
 assert_pkt_fails("000Bng ref\n");
 assert_pkt_fails("000Bng ref\n");

 assert_ng_parses("000Ang  x\n", "", "x");
 assert_ng_parses("000Fng ref msg\n", "ref", "msg");
 assert_ng_parses("000Fng ref msg\n", "ref", "msg");
}
