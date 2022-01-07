
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cns3xxx_spi {int dummy; } ;


 int SPI_INTERRUPT_STATUS_REG ;

__attribute__((used)) static inline u8 cns3xxx_spi_tx_buffer_empty(struct cns3xxx_spi *hw)
{
 return ((SPI_INTERRUPT_STATUS_REG & (0x1 << 3)) ? 1 : 0);
}
