
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nds32_pmu {int dummy; } ;


 int ENODEV ;
 int device_pmu_init (struct nds32_pmu*) ;
 int get_cpu () ;
 int put_cpu () ;

__attribute__((used)) static int probe_current_pmu(struct nds32_pmu *pmu)
{
 int ret;

 get_cpu();
 ret = -ENODEV;





 device_pmu_init(pmu);
 put_cpu();
 return ret;
}
