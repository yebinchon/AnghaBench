
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum _msm_id { ____Placeholder__msm_id } _msm_id ;
typedef enum _msm8996_version { ____Placeholder__msm8996_version } _msm8996_version ;




 scalar_t__ IS_ERR (int *) ;


 int MSM8996_SG ;
 int MSM8996_V3 ;
 int MSM_ID_SMEM ;
 int NUM_OF_MSM8996_VERSIONS ;
 int QCOM_SMEM_HOST_ANY ;
 int * qcom_smem_get (int ,int ,size_t*) ;

__attribute__((used)) static enum _msm8996_version qcom_cpufreq_get_msm_id(void)
{
 size_t len;
 u32 *msm_id;
 enum _msm8996_version version;

 msm_id = qcom_smem_get(QCOM_SMEM_HOST_ANY, MSM_ID_SMEM, &len);
 if (IS_ERR(msm_id))
  return NUM_OF_MSM8996_VERSIONS;


 msm_id++;

 switch ((enum _msm_id)*msm_id) {
 case 128:
 case 130:
  version = MSM8996_V3;
  break;
 case 129:
 case 131:
  version = MSM8996_SG;
  break;
 default:
  version = NUM_OF_MSM8996_VERSIONS;
 }

 return version;
}
