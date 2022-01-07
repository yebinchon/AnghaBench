
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ssif_info {int addr_info; TYPE_1__* client; int addr_source; } ;
struct ipmi_smi_info {int * dev; int addr_info; int addr_src; } ;
struct TYPE_2__ {int dev; } ;


 int get_device (int *) ;

__attribute__((used)) static int get_smi_info(void *send_info, struct ipmi_smi_info *data)
{
 struct ssif_info *ssif_info = send_info;

 data->addr_src = ssif_info->addr_source;
 data->dev = &ssif_info->client->dev;
 data->addr_info = ssif_info->addr_info;
 get_device(data->dev);

 return 0;
}
