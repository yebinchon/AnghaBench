
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;


 int cppc_find_dmi_mhz ;
 int dmi_walk (int ,int*) ;

__attribute__((used)) static u64 cppc_get_dmi_max_khz(void)
{
 u16 mhz = 0;

 dmi_walk(cppc_find_dmi_mhz, &mhz);





 mhz = mhz ? mhz : 1;

 return (1000 * mhz);
}
