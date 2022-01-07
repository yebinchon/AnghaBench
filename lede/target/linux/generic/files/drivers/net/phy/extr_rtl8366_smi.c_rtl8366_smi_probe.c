
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtl8366_smi {int dummy; } ;
struct TYPE_2__ {scalar_t__ of_node; } ;
struct platform_device {TYPE_1__ dev; } ;


 struct rtl8366_smi* ERR_PTR (int) ;
 int kfree (struct rtl8366_smi*) ;
 struct rtl8366_smi* rtl8366_smi_alloc (TYPE_1__*) ;
 int rtl8366_smi_probe_of (struct platform_device*,struct rtl8366_smi*) ;
 int rtl8366_smi_probe_plat (struct platform_device*,struct rtl8366_smi*) ;

struct rtl8366_smi *rtl8366_smi_probe(struct platform_device *pdev)
{
 struct rtl8366_smi *smi;
 int err;

 smi = rtl8366_smi_alloc(&pdev->dev);
 if (!smi)
  return ((void*)0);

 if (pdev->dev.of_node)
  err = rtl8366_smi_probe_of(pdev, smi);
 else
  err = rtl8366_smi_probe_plat(pdev, smi);

 if (err)
  goto free_smi;

 return smi;

free_smi:
 kfree(smi);
 return ERR_PTR(err);
}
