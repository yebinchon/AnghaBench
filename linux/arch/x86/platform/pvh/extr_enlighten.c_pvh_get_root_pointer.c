
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int rsdp_paddr; } ;


 TYPE_1__ pvh_start_info ;

__attribute__((used)) static u64 pvh_get_root_pointer(void)
{
 return pvh_start_info.rsdp_paddr;
}
