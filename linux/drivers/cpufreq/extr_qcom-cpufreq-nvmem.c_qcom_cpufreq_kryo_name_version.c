
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct qcom_cpufreq_drv {int versions; } ;
struct nvmem_cell {int dummy; } ;
struct device {int dummy; } ;
typedef enum _msm8996_version { ____Placeholder__msm8996_version } _msm8996_version ;


 int BUG () ;
 int ENODEV ;
 scalar_t__ IS_ERR (scalar_t__*) ;


 int NUM_OF_MSM8996_VERSIONS ;
 int PTR_ERR (scalar_t__*) ;
 int dev_err (struct device*,char*) ;
 int kfree (scalar_t__*) ;
 scalar_t__* nvmem_cell_read (struct nvmem_cell*,size_t*) ;
 int qcom_cpufreq_get_msm_id () ;

__attribute__((used)) static int qcom_cpufreq_kryo_name_version(struct device *cpu_dev,
       struct nvmem_cell *speedbin_nvmem,
       struct qcom_cpufreq_drv *drv)
{
 size_t len;
 u8 *speedbin;
 enum _msm8996_version msm8996_version;

 msm8996_version = qcom_cpufreq_get_msm_id();
 if (NUM_OF_MSM8996_VERSIONS == msm8996_version) {
  dev_err(cpu_dev, "Not Snapdragon 820/821!");
  return -ENODEV;
 }

 speedbin = nvmem_cell_read(speedbin_nvmem, &len);
 if (IS_ERR(speedbin))
  return PTR_ERR(speedbin);

 switch (msm8996_version) {
 case 128:
  drv->versions = 1 << (unsigned int)(*speedbin);
  break;
 case 129:
  drv->versions = 1 << ((unsigned int)(*speedbin) + 4);
  break;
 default:
  BUG();
  break;
 }

 kfree(speedbin);
 return 0;
}
