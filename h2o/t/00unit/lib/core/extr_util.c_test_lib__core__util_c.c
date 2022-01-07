
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int subtest (char*,int ) ;
 int test_build_destination ;
 int test_build_destination_escaping ;
 int test_extract_push_path_from_link_header ;
 int test_parse_proxy_line ;

void test_lib__core__util_c()
{
    subtest("parse_proxy_line", test_parse_proxy_line);
    subtest("extract_push_path_from_link_header", test_extract_push_path_from_link_header);
    subtest("test_build_destination", test_build_destination);
    subtest("test_build_destination_escaping", test_build_destination_escaping);
}
