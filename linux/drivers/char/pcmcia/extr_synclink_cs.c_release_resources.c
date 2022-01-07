
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int device_name; } ;
typedef TYPE_1__ MGSLPC_INFO ;


 scalar_t__ DEBUG_LEVEL_INFO ;
 scalar_t__ debug_level ;
 int printk (char*,int ) ;
 int rx_free_buffers (TYPE_1__*) ;

__attribute__((used)) static void release_resources(MGSLPC_INFO *info)
{
 if (debug_level >= DEBUG_LEVEL_INFO)
  printk("release_resources(%s)\n", info->device_name);
 rx_free_buffers(info);
}
