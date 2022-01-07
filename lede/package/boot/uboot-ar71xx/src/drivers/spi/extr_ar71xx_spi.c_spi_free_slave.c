
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_slave {int dummy; } ;
struct ar71xx_spi_slave {int dummy; } ;


 int free (struct ar71xx_spi_slave*) ;
 struct ar71xx_spi_slave* to_ar71xx_spi (struct spi_slave*) ;

void spi_free_slave(struct spi_slave *slave)
{
 struct ar71xx_spi_slave *ss = to_ar71xx_spi(slave);

 free(ss);
}
