
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int INNOVATOR_FPGA_IMR2 ;
 int INNOVATOR_FPGA_ISR2 ;
 int OMAP1510_FPGA_IMR_HI ;
 int OMAP1510_FPGA_IMR_LO ;
 int OMAP1510_FPGA_ISR_HI ;
 int OMAP1510_FPGA_ISR_LO ;
 int __raw_readb (int ) ;

__attribute__((used)) static inline u32 get_fpga_unmasked_irqs(void)
{
 return
  ((__raw_readb(OMAP1510_FPGA_ISR_LO) &
    __raw_readb(OMAP1510_FPGA_IMR_LO))) |
  ((__raw_readb(OMAP1510_FPGA_ISR_HI) &
    __raw_readb(OMAP1510_FPGA_IMR_HI)) << 8) |
  ((__raw_readb(INNOVATOR_FPGA_ISR2) &
    __raw_readb(INNOVATOR_FPGA_IMR2)) << 16);
}
