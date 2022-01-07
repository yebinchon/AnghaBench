
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_ACK_COMMON ;
 int GIT_ACK_CONTINUE ;
 int GIT_ACK_READY ;
 int assert_ack_parses (char*,char*,int ) ;
 int assert_pkt_fails (char*) ;

void test_transports_smart_packet__ack_pkt(void)
{
 assert_ack_parses("0030ACK 0000000000000000000000000000000000000000",
     "0000000000000000000000000000000000000000", 0);
 assert_ack_parses("0039ACK 0000000000000000000000000000000000000000 continue",
     "0000000000000000000000000000000000000000",
     GIT_ACK_CONTINUE);
 assert_ack_parses("0037ACK 0000000000000000000000000000000000000000 common",
     "0000000000000000000000000000000000000000",
     GIT_ACK_COMMON);
 assert_ack_parses("0037ACK 0000000000000000000000000000000000000000 ready",
     "0000000000000000000000000000000000000000",
     GIT_ACK_READY);


 assert_pkt_fails("0007ACK");
 assert_pkt_fails("0008ACK ");


 assert_pkt_fails("0036ACK00000000000000000x0000000000000000000000 ready");


 assert_pkt_fails("0037ACK 00000000000000000x0000000000000000000000 ready");
 assert_pkt_fails("0036ACK 000000000000000000000000000000000000000 ready");
 assert_pkt_fails("0036ACK 00000000000000000x0000000000000000000000ready");


 assert_pkt_fails("0036ACK 0000000000000000000000000000000000000000 read");
}
