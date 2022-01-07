
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int fsl_supported_pm_modes ;

__attribute__((used)) static unsigned int rcpm_get_pm_modes(void)
{
 return fsl_supported_pm_modes;
}
