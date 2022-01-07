
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct agp_memory {int dummy; } ;
struct TYPE_2__ {scalar_t__ registers; } ;


 scalar_t__ AMD_TLBFLUSH ;
 TYPE_1__ amd_irongate_private ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void amd_irongate_tlbflush(struct agp_memory *temp)
{
 writel(1, amd_irongate_private.registers+AMD_TLBFLUSH);
 readl(amd_irongate_private.registers+AMD_TLBFLUSH);
}
