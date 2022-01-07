
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_l32_fails (char*,int) ;
 int assert_l32_parses (char*,int,int) ;

void test_core_strtol__int32(void)
{
 assert_l32_parses("123", 123, 10);
 assert_l32_parses("  +123 ", 123, 10);
 assert_l32_parses("  +2147483647 ", 2147483647, 10);
 assert_l32_parses("  -2147483648 ", -2147483648LL, 10);
 assert_l32_parses("A", 10, 16);
 assert_l32_parses("1x1", 1, 10);

 assert_l32_fails("", 10);
 assert_l32_fails("a", 10);
 assert_l32_fails("x10x", 10);
 assert_l32_fails("  2147483657 ", 10);
 assert_l32_fails("  -2147483657 ", 10);
}
