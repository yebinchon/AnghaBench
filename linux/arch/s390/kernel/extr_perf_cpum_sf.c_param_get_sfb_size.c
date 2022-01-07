
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int dummy; } ;


 int CPUM_SF_MAX_SDB ;
 int CPUM_SF_MIN_SDB ;
 int ENODEV ;
 int cpum_sf_avail () ;
 int sprintf (char*,char*,int ,int ) ;

__attribute__((used)) static int param_get_sfb_size(char *buffer, const struct kernel_param *kp)
{
 if (!cpum_sf_avail())
  return -ENODEV;
 return sprintf(buffer, "%lu,%lu", CPUM_SF_MIN_SDB, CPUM_SF_MAX_SDB);
}
