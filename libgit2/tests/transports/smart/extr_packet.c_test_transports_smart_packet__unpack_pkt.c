
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_unpack_parses (char*,int) ;

void test_transports_smart_packet__unpack_pkt(void)
{
 assert_unpack_parses("000Dunpack ok", 1);
 assert_unpack_parses("000Dunpack ng error-msg", 0);

 assert_unpack_parses("000Aunpack", 0);
 assert_unpack_parses("0011unpack foobar", 0);
 assert_unpack_parses("0010unpack ng ok", 0);
 assert_unpack_parses("0010unpack okfoo", 1);
}
