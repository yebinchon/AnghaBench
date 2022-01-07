
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NUM_VARS ;
 int cl_getenv (int ) ;
 int * env_save ;
 int * env_vars ;

void test_core_env__initialize(void)
{
 int i;
 for (i = 0; i < NUM_VARS; ++i)
  env_save[i] = cl_getenv(env_vars[i]);
}
