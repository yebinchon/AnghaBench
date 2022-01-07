
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_smi_powernv {int dummy; } ;


 int ipmi_powernv_recv (struct ipmi_smi_powernv*) ;

__attribute__((used)) static void ipmi_powernv_poll(void *send_info)
{
 struct ipmi_smi_powernv *smi = send_info;

 ipmi_powernv_recv(smi);
}
