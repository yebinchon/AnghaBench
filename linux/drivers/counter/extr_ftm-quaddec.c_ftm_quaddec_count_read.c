
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ftm_quaddec {int dummy; } ;
struct counter_device {struct ftm_quaddec* priv; } ;
struct counter_count_read_value {int dummy; } ;
struct counter_count {int dummy; } ;


 int COUNTER_COUNT_POSITION ;
 int FTM_CNT ;
 int counter_count_read_value_set (struct counter_count_read_value*,int ,int *) ;
 int ftm_read (struct ftm_quaddec* const,int ,int *) ;

__attribute__((used)) static int ftm_quaddec_count_read(struct counter_device *counter,
      struct counter_count *count,
      struct counter_count_read_value *val)
{
 struct ftm_quaddec *const ftm = counter->priv;
 uint32_t cntval;

 ftm_read(ftm, FTM_CNT, &cntval);

 counter_count_read_value_set(val, COUNTER_COUNT_POSITION, &cntval);

 return 0;
}
