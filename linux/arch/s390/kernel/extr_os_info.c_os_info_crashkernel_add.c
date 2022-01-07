
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u64 ;
struct TYPE_3__ {int csum; void* crashkernel_size; void* crashkernel_addr; } ;


 TYPE_1__ os_info ;
 int os_info_csum (TYPE_1__*) ;

void os_info_crashkernel_add(unsigned long base, unsigned long size)
{
 os_info.crashkernel_addr = (u64)(unsigned long)base;
 os_info.crashkernel_size = (u64)(unsigned long)size;
 os_info.csum = os_info_csum(&os_info);
}
