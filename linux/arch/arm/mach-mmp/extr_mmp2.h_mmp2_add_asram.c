
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sram_platdata {int dummy; } ;


 int mmp2_device_asram ;
 int pxa_register_device (int *,struct sram_platdata*,int) ;

__attribute__((used)) static inline int mmp2_add_asram(struct sram_platdata *data)
{
 return pxa_register_device(&mmp2_device_asram, data, sizeof(*data));
}
