
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int subtest (char*,int ) ;
 int test_at_position ;
 int test_decode_base64 ;
 int test_get_filext ;
 int test_htmlescape ;
 int test_next_token ;
 int test_next_token2 ;
 int test_next_token3 ;
 int test_stripws ;
 int test_strstr ;
 int test_uri_escape ;

void test_lib__common__string_c(void)
{
    subtest("strstr", test_strstr);
    subtest("stripws", test_stripws);
    subtest("get_filext", test_get_filext);
    subtest("next_token", test_next_token);
    subtest("next_token2", test_next_token2);
    subtest("next_token3", test_next_token3);
    subtest("decode_base64", test_decode_base64);
    subtest("htmlescape", test_htmlescape);
    subtest("uri_escape", test_uri_escape);
    subtest("at_position", test_at_position);
}
