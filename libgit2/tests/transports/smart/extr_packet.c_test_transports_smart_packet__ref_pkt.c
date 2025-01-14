
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_pkt_fails (char*) ;
 int assert_ref_parses (char*,char*,char*,char*) ;

void test_transports_smart_packet__ref_pkt(void)
{
 assert_pkt_fails("002C0000000000000000000000000000000000000000");
 assert_pkt_fails("002D0000000000000000000000000000000000000000\n");
 assert_pkt_fails("00300000000000000000000000000000000000000000HEAD");
 assert_pkt_fails("004800000000x0000000000000000000000000000000 refs/heads/master\0multi_ack");
 assert_ref_parses(
  "003F0000000000000000000000000000000000000000 refs/heads/master\0",
  "0000000000000000000000000000000000000000", "refs/heads/master", "");
 assert_ref_parses(
  "00480000000000000000000000000000000000000000 refs/heads/master\0multi_ack",
  "0000000000000000000000000000000000000000", "refs/heads/master", "multi_ack");
 assert_ref_parses(
  "00460000000000000000000000000000000000000000 refs/heads/master\0one two",
  "0000000000000000000000000000000000000000", "refs/heads/master", "one two");
 assert_ref_parses(
  "00310000000000000000000000000000000000000000 HEAD",
  "0000000000000000000000000000000000000000", "HEAD", ((void*)0));
 assert_pkt_fails("0031000000000000000000000000000000000000000 HEAD");
 assert_ref_parses(
  "00360000000000000000000000000000000000000000 HEAD HEAD",
  "0000000000000000000000000000000000000000", "HEAD HEAD", ((void*)0));
}
