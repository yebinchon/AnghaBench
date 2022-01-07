
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_smi_powernv {struct ipmi_smi* intf; } ;
struct ipmi_smi {int dummy; } ;



__attribute__((used)) static int ipmi_powernv_start_processing(void *send_info, struct ipmi_smi *intf)
{
 struct ipmi_smi_powernv *smi = send_info;

 smi->intf = intf;
 return 0;
}
