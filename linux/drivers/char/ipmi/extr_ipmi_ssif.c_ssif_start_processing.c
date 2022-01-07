
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssif_info {struct ipmi_smi* intf; } ;
struct ipmi_smi {int dummy; } ;



__attribute__((used)) static int ssif_start_processing(void *send_info,
     struct ipmi_smi *intf)
{
 struct ssif_info *ssif_info = send_info;

 ssif_info->intf = intf;

 return 0;
}
