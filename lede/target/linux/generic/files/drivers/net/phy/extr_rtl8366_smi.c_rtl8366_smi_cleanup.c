
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8366_smi {int dummy; } ;


 int __rtl8366_smi_cleanup (struct rtl8366_smi*) ;
 int rtl8366_debugfs_remove (struct rtl8366_smi*) ;
 int rtl8366_smi_mii_cleanup (struct rtl8366_smi*) ;

void rtl8366_smi_cleanup(struct rtl8366_smi *smi)
{
 rtl8366_debugfs_remove(smi);
 rtl8366_smi_mii_cleanup(smi);
 __rtl8366_smi_cleanup(smi);
}
