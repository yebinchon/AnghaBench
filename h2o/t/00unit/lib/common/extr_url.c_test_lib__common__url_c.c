
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int subtest (char*,int ) ;
 int test_hostport ;
 int test_normalize_path ;
 int test_parse ;
 int test_parse_relative ;
 int test_resolve ;

void test_lib__common__url_c(void)
{
    subtest("normalize_path", test_normalize_path);
    subtest("hostport", test_hostport);
    subtest("parse", test_parse);
    subtest("parse_relative", test_parse_relative);
    subtest("resolve", test_resolve);
}
