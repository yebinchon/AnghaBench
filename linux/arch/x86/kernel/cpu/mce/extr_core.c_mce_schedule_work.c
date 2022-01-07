
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mce_gen_pool_empty () ;
 int mce_work ;
 int schedule_work (int *) ;

__attribute__((used)) static void mce_schedule_work(void)
{
 if (!mce_gen_pool_empty())
  schedule_work(&mce_work);
}
