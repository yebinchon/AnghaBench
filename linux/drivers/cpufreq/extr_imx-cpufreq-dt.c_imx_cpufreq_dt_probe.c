
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct platform_device {int dev; } ;
struct device {int dummy; } ;


 int BIT (int) ;
 int IMX8MN_OCOTP_CFG3_SPEED_GRADE_MASK ;
 scalar_t__ IS_ERR (int ) ;
 int OCOTP_CFG3_MKT_SEGMENT_MASK ;
 int OCOTP_CFG3_MKT_SEGMENT_SHIFT ;
 int OCOTP_CFG3_SPEED_GRADE_MASK ;
 int OCOTP_CFG3_SPEED_GRADE_SHIFT ;
 int PTR_ERR (int ) ;
 int cpufreq_dt_pdev ;
 int cpufreq_opp_table ;
 int dev_err (int *,char*,int) ;
 int dev_info (int *,char*,int,int,int,int) ;
 int dev_pm_opp_put_supported_hw (int ) ;
 int dev_pm_opp_set_supported_hw (struct device*,int*,int) ;
 struct device* get_cpu_device (int ) ;
 int nvmem_cell_read_u32 (struct device*,char*,int*) ;
 scalar_t__ of_machine_is_compatible (char*) ;
 int platform_device_register_data (int *,char*,int,int *,int ) ;

__attribute__((used)) static int imx_cpufreq_dt_probe(struct platform_device *pdev)
{
 struct device *cpu_dev = get_cpu_device(0);
 u32 cell_value, supported_hw[2];
 int speed_grade, mkt_segment;
 int ret;

 ret = nvmem_cell_read_u32(cpu_dev, "speed_grade", &cell_value);
 if (ret)
  return ret;

 if (of_machine_is_compatible("fsl,imx8mn"))
  speed_grade = (cell_value & IMX8MN_OCOTP_CFG3_SPEED_GRADE_MASK)
         >> OCOTP_CFG3_SPEED_GRADE_SHIFT;
 else
  speed_grade = (cell_value & OCOTP_CFG3_SPEED_GRADE_MASK)
         >> OCOTP_CFG3_SPEED_GRADE_SHIFT;
 mkt_segment = (cell_value & OCOTP_CFG3_MKT_SEGMENT_MASK) >> OCOTP_CFG3_MKT_SEGMENT_SHIFT;
 if (mkt_segment == 0 && speed_grade == 0 && (
   of_machine_is_compatible("fsl,imx8mm") ||
   of_machine_is_compatible("fsl,imx8mn") ||
   of_machine_is_compatible("fsl,imx8mq")))
  speed_grade = 1;

 supported_hw[0] = BIT(speed_grade);
 supported_hw[1] = BIT(mkt_segment);
 dev_info(&pdev->dev, "cpu speed grade %d mkt segment %d supported-hw %#x %#x\n",
   speed_grade, mkt_segment, supported_hw[0], supported_hw[1]);

 cpufreq_opp_table = dev_pm_opp_set_supported_hw(cpu_dev, supported_hw, 2);
 if (IS_ERR(cpufreq_opp_table)) {
  ret = PTR_ERR(cpufreq_opp_table);
  dev_err(&pdev->dev, "Failed to set supported opp: %d\n", ret);
  return ret;
 }

 cpufreq_dt_pdev = platform_device_register_data(
   &pdev->dev, "cpufreq-dt", -1, ((void*)0), 0);
 if (IS_ERR(cpufreq_dt_pdev)) {
  dev_pm_opp_put_supported_hw(cpufreq_opp_table);
  ret = PTR_ERR(cpufreq_dt_pdev);
  dev_err(&pdev->dev, "Failed to register cpufreq-dt: %d\n", ret);
  return ret;
 }

 return 0;
}
