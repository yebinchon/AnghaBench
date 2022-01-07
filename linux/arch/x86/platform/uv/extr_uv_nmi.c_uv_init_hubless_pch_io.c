
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* PCH_PCR_GPIO_ADDRESS (int) ;
 int nmi_debug (char*,int*,int,...) ;
 int readl (int*) ;
 int writel (int,int*) ;

__attribute__((used)) static void uv_init_hubless_pch_io(int offset, int mask, int data)
{
 int *addr = PCH_PCR_GPIO_ADDRESS(offset);
 int readd = readl(addr);

 if (mask) {
  int writed = (readd & ~mask) | data;

  nmi_debug("UV:PCH: %p = %x & %x | %x (%x)\n",
   addr, readd, ~mask, data, writed);
  writel(writed, addr);
 } else if (readd & data) {
  nmi_debug("UV:PCH: %p = %x\n", addr, data);
  writel(data, addr);
 }

 (void)readl(addr);
}
