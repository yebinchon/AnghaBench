
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct bcma_device {scalar_t__ io_wrap; } ;


 scalar_t__ WARN_ONCE (int,char*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void bcma_host_soc_awrite32(struct bcma_device *core, u16 offset,
      u32 value)
{
 if (WARN_ONCE(!core->io_wrap, "Accessed core has no wrapper/agent\n"))
  return;
 writel(value, core->io_wrap + offset);
}
