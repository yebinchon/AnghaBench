
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_error_parses (char*,char*,int) ;
 int assert_pkt_fails (char*) ;

void test_transports_smart_packet__error_pkt(void)
{
 assert_pkt_fails("0007ERR");
 assert_pkt_fails("0008ERRx");
 assert_error_parses("0008ERR ", "", 0);
 assert_error_parses("000EERR ERRMSG", "ERRMSG", 6);
}
