
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int addr; } ;
struct ssif_addr_info {int link; TYPE_2__ binfo; int adapter_name; struct i2c_client* client; int addr_src; } ;
struct i2c_client {int addr; TYPE_1__* adapter; } ;
struct TYPE_3__ {int name; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SI_ACPI ;
 int kstrdup (int ,int ) ;
 struct ssif_addr_info* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int ssif_infos ;

__attribute__((used)) static int ssif_add_infos(struct i2c_client *client)
{
 struct ssif_addr_info *info;

 info = kzalloc(sizeof(*info), GFP_KERNEL);
 if (!info)
  return -ENOMEM;
 info->addr_src = SI_ACPI;
 info->client = client;
 info->adapter_name = kstrdup(client->adapter->name, GFP_KERNEL);
 info->binfo.addr = client->addr;
 list_add_tail(&info->link, &ssif_infos);
 return 0;
}
