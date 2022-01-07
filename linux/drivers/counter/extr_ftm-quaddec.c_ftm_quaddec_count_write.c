
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ftm_quaddec {TYPE_1__* pdev; } ;
struct counter_device {struct ftm_quaddec* priv; } ;
struct counter_count_write_value {int dummy; } ;
struct counter_count {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int COUNTER_COUNT_POSITION ;
 int EINVAL ;
 int counter_count_write_value_get (scalar_t__*,int ,struct counter_count_write_value*) ;
 int dev_warn (int *,char*) ;
 int ftm_reset_counter (struct ftm_quaddec* const) ;

__attribute__((used)) static int ftm_quaddec_count_write(struct counter_device *counter,
       struct counter_count *count,
       struct counter_count_write_value *val)
{
 struct ftm_quaddec *const ftm = counter->priv;
 u32 cnt;
 int err;

 err = counter_count_write_value_get(&cnt, COUNTER_COUNT_POSITION, val);
 if (err)
  return err;

 if (cnt != 0) {
  dev_warn(&ftm->pdev->dev, "Can only accept '0' as new counter value\n");
  return -EINVAL;
 }

 ftm_reset_counter(ftm);

 return 0;
}
