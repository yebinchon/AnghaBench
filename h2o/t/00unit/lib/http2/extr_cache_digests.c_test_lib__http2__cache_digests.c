
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int subtest (char*,int ) ;
 int test_calc_hash ;
 int test_decode ;

void test_lib__http2__cache_digests(void)
{
    subtest("calc_hash", test_calc_hash);
    subtest("test_decode", test_decode);
}
