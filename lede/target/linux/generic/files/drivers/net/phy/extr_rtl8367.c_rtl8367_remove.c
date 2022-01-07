
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8366_smi {int dummy; } ;
struct platform_device {int dummy; } ;


 int kfree (struct rtl8366_smi*) ;
 struct rtl8366_smi* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;
 int rtl8366_smi_cleanup (struct rtl8366_smi*) ;
 int rtl8367_switch_cleanup (struct rtl8366_smi*) ;

__attribute__((used)) static int rtl8367_remove(struct platform_device *pdev)
{
 struct rtl8366_smi *smi = platform_get_drvdata(pdev);

 if (smi) {
  rtl8367_switch_cleanup(smi);
  platform_set_drvdata(pdev, ((void*)0));
  rtl8366_smi_cleanup(smi);
  kfree(smi);
 }

 return 0;
}
