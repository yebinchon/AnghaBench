
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_device {int dummy; } ;


 int b53_spi_clear_status (struct spi_device*) ;
 int b53_spi_set_page (struct spi_device*,int ) ;

__attribute__((used)) static inline int b53_prepare_reg_access(struct spi_device *spi, u8 page)
{
 int ret = b53_spi_clear_status(spi);

 if (ret)
  return ret;

 return b53_spi_set_page(spi, page);
}
