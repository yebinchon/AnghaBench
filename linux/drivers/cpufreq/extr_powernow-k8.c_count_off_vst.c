
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct powernow_k8_data {int vstable; } ;


 int VST_UNITS_20US ;
 int udelay (int) ;

__attribute__((used)) static void count_off_vst(struct powernow_k8_data *data)
{
 udelay(data->vstable * VST_UNITS_20US);
}
