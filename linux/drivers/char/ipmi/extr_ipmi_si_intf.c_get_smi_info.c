
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; int addr_info; int addr_source; } ;
struct smi_info {TYPE_1__ io; } ;
struct ipmi_smi_info {int addr_info; int dev; int addr_src; } ;


 int get_device (int ) ;

__attribute__((used)) static int get_smi_info(void *send_info, struct ipmi_smi_info *data)
{
 struct smi_info *smi = send_info;

 data->addr_src = smi->io.addr_source;
 data->dev = smi->io.dev;
 data->addr_info = smi->io.addr_info;
 get_device(smi->io.dev);

 return 0;
}
