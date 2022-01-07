
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int subtest (char*,int ) ;
 int test_hpack ;
 int test_hpack_dynamic_table ;
 int test_hpack_push ;
 int test_token_wo_hpack_id ;

void test_lib__http2__hpack(void)
{
    subtest("hpack", test_hpack);
    subtest("hpack-push", test_hpack_push);
    subtest("hpack-dynamic-table", test_hpack_dynamic_table);
    subtest("token-wo-hpack-id", test_token_wo_hpack_id);
}
