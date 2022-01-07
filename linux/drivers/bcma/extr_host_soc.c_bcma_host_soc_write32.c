
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct bcma_device {scalar_t__ io_addr; } ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static void bcma_host_soc_write32(struct bcma_device *core, u16 offset,
     u32 value)
{
 writel(value, core->io_addr + offset);
}
