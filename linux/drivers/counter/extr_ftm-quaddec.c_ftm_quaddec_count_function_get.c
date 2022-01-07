
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct counter_device {int dummy; } ;
struct counter_count {int dummy; } ;


 size_t FTM_QUADDEC_COUNT_ENCODER_MODE_1 ;

__attribute__((used)) static int ftm_quaddec_count_function_get(struct counter_device *counter,
       struct counter_count *count,
       size_t *function)
{
 *function = FTM_QUADDEC_COUNT_ENCODER_MODE_1;

 return 0;
}
