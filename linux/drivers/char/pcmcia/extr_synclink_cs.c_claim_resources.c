
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int device_name; } ;
typedef TYPE_1__ MGSLPC_INFO ;


 int ENODEV ;
 int printk (char*,int ) ;
 int release_resources (TYPE_1__*) ;
 scalar_t__ rx_alloc_buffers (TYPE_1__*) ;

__attribute__((used)) static int claim_resources(MGSLPC_INFO *info)
{
 if (rx_alloc_buffers(info) < 0) {
  printk("Can't allocate rx buffer %s\n", info->device_name);
  release_resources(info);
  return -ENODEV;
 }
 return 0;
}
