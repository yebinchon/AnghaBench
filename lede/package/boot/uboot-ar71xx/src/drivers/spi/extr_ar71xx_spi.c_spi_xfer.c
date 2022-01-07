
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct spi_slave {int cs; } ;
struct ar71xx_spi_slave {int dummy; } ;


 scalar_t__ AR71XX_SPI_BASE ;
 int KSEG1ADDR (scalar_t__) ;
 int PRINTD (char*,...) ;
 int SPI_FS_GPIO ;
 int SPI_IOC_CLK ;
 int SPI_IOC_CS (int ) ;
 int SPI_IOC_CS_ALL ;
 int SPI_IOC_DO ;
 scalar_t__ SPI_REG_FS ;
 scalar_t__ SPI_REG_IOC ;
 scalar_t__ SPI_REG_RDS ;
 unsigned long SPI_XFER_BEGIN ;
 unsigned long SPI_XFER_END ;
 int __raw_readl (int ) ;
 int __raw_writel (int,int ) ;
 struct ar71xx_spi_slave* to_ar71xx_spi (struct spi_slave*) ;

int spi_xfer(struct spi_slave *slave, unsigned int bitlen, const void *dout,
  void *din, unsigned long flags)
{
 struct ar71xx_spi_slave *ss = to_ar71xx_spi(slave);
 uint8_t *rx = din;
 const uint8_t *tx = dout;
 uint8_t curbyte, curbitlen, restbits;
 uint32_t bytes = bitlen / 8;
 uint32_t out;
 uint32_t in;

 PRINTD("ar71xx_spi: spi_xfer: slave:%p bitlen:%08x dout:%p din:%p flags:%08x\n", slave, bitlen, dout, din, flags);

 if (flags & SPI_XFER_BEGIN) {
  __raw_writel(SPI_FS_GPIO, KSEG1ADDR(AR71XX_SPI_BASE + SPI_REG_FS));
  __raw_writel(SPI_IOC_CS_ALL, KSEG1ADDR(AR71XX_SPI_BASE + SPI_REG_IOC));
 }

 restbits = (bitlen % 8);
 if (restbits != 0)
  bytes++;


 out = SPI_IOC_CS_ALL & ~(SPI_IOC_CS(slave->cs));

 while (bytes--) {

  curbyte = 0;
  if (tx) {
   curbyte = *tx++;
  }

  if (restbits != 0) {
   curbitlen = restbits;
   curbyte <<= 8 - restbits;
  } else {
   curbitlen = 8;
  }

  PRINTD("ar71xx_spi: sending: data:%02x length:%d\n", curbyte, curbitlen);


  for (curbyte <<= (8 - curbitlen); curbitlen; curbitlen--) {

   if (curbyte & (1 << 7))
    out |= SPI_IOC_DO;
   else
    out &= ~(SPI_IOC_DO);


   __raw_writel(out, KSEG1ADDR(AR71XX_SPI_BASE + SPI_REG_IOC));

   __raw_writel(out | SPI_IOC_CLK, KSEG1ADDR(AR71XX_SPI_BASE + SPI_REG_IOC));

   curbyte <<= 1;
  }

  in = __raw_readl(KSEG1ADDR(AR71XX_SPI_BASE + SPI_REG_RDS));
  PRINTD("ar71xx_spi: received:%02x\n", in);

  if (rx) {
   if (restbits == 0) {
    *rx++ = in;
   } else {
    *rx++ = (in << (8 - restbits));
   }
  }
 }

 if (flags & SPI_XFER_END) {
  __raw_writel(SPI_IOC_CS(slave->cs), KSEG1ADDR(AR71XX_SPI_BASE + SPI_REG_IOC));
  __raw_writel(SPI_IOC_CS_ALL, KSEG1ADDR(AR71XX_SPI_BASE + SPI_REG_IOC));
  __raw_writel(0, KSEG1ADDR(AR71XX_SPI_BASE + SPI_REG_FS));
 }

 PRINTD(" ---> out\n");

 return 0;
}
