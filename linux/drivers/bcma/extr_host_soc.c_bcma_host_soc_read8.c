
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct bcma_device {scalar_t__ io_addr; } ;


 int readb (scalar_t__) ;

__attribute__((used)) static u8 bcma_host_soc_read8(struct bcma_device *core, u16 offset)
{
 return readb(core->io_addr + offset);
}
