
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_pkt_fails (char*) ;
 int assert_sideband_progress_parses (char*,char*,int) ;

void test_transports_smart_packet__sideband_progress_pkt(void)
{
 assert_pkt_fails("0001\2");
 assert_sideband_progress_parses("0005\2", "", 0);
 assert_pkt_fails("0009\2o");
 assert_sideband_progress_parses("0009\2data", "data", 4);
 assert_sideband_progress_parses("000a\2data", "data", 5);
}
