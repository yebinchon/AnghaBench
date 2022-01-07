
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int subtest (char*,int ) ;
 int test_read_command ;
 int test_server_starter ;

void test_lib__common__serverutil_c(void)
{
    subtest("server-starter", test_server_starter);
    subtest("read-command", test_read_command);
}
