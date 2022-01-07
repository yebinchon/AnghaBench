
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_is_env_set (char*) ;
 int cl_skip () ;
 int test_stream (int) ;

void test_filter_stream__bigfile(void)
{
 if (!cl_is_env_set("GITTEST_INVASIVE_FS_SIZE"))
  cl_skip();

 test_stream(51200);
}
