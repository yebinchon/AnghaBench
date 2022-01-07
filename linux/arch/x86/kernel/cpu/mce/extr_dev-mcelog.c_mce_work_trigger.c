
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* mce_helper ;
 int mce_trigger_work ;
 int schedule_work (int *) ;

void mce_work_trigger(void)
{
 if (mce_helper[0])
  schedule_work(&mce_trigger_work);
}
