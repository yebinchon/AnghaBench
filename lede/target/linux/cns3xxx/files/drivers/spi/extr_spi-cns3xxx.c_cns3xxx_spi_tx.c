
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct cns3xxx_spi {int dummy; } ;


 int SPI_TRANSMIT_BUFFER_REG ;
 int SPI_TRANSMIT_CONTROL_REG ;
 int cns3xxx_spi_bus_idle (struct cns3xxx_spi*) ;
 int cns3xxx_spi_tx_buffer_empty (struct cns3xxx_spi*) ;

u8 cns3xxx_spi_tx(struct cns3xxx_spi *hw, u8 tx_channel, u8 tx_eof, u32 tx_data)
{

        while (!cns3xxx_spi_bus_idle(hw)) ;

        while (!cns3xxx_spi_tx_buffer_empty(hw)) ;

        SPI_TRANSMIT_CONTROL_REG &= ~(0x7);
        SPI_TRANSMIT_CONTROL_REG |= (tx_channel & 0x3) | ((tx_eof & 0x1) << 2);

        SPI_TRANSMIT_BUFFER_REG = tx_data;

        return 1;
}
