
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int u32 ;
struct resource {scalar_t__ start; scalar_t__ end; } ;


 int FLASH_CSADDR_MASK (int) ;
 int FLASH_CSBASE_ADDR (int) ;
 int nlm_read_reg (scalar_t__,int ) ;

__attribute__((used)) static void setup_flash_resource(uint64_t flash_mmio,
 uint64_t flash_map_base, int cs, struct resource *res)
{
 u32 base, mask;

 base = nlm_read_reg(flash_mmio, FLASH_CSBASE_ADDR(cs));
 mask = nlm_read_reg(flash_mmio, FLASH_CSADDR_MASK(cs));

 res->start = flash_map_base + ((unsigned long)base << 16);
 res->end = res->start + (mask + 1) * 64 * 1024;
}
