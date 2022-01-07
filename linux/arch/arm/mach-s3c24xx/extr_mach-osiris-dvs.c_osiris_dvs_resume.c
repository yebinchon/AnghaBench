
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int osiris_dvs_tps_setdvs (int) ;

__attribute__((used)) static int osiris_dvs_resume(struct device *dev)
{
 osiris_dvs_tps_setdvs(1);
 return 0;
}
