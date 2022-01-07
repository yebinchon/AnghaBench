
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ok (int) ;
 int ptls_server_name_is_ipaddr (char*) ;

__attribute__((used)) static void test_is_ipaddr(void)
{
    ok(!ptls_server_name_is_ipaddr("www.google.com"));
    ok(!ptls_server_name_is_ipaddr("www.google.com."));
    ok(!ptls_server_name_is_ipaddr("www"));
    ok(!ptls_server_name_is_ipaddr(""));
    ok(!ptls_server_name_is_ipaddr("123"));
    ok(ptls_server_name_is_ipaddr("1.1.1.1"));
    ok(ptls_server_name_is_ipaddr("2001:db8::2:1"));
}
