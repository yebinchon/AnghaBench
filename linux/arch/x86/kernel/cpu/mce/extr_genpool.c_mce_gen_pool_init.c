
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ mce_evt_pool ;
 int mce_gen_pool_create () ;

int mce_gen_pool_init(void)
{

 if (mce_evt_pool)
  return 0;

 return mce_gen_pool_create();
}
