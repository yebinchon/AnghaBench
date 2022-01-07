
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_transfer {unsigned char const** tx_buf; int len; unsigned char* rx_buf; } ;
struct spi_message {int dummy; } ;
struct TYPE_2__ {int spi; } ;



 int ENODEV ;
 TYPE_1__* rb4xx_cpld ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (int ,struct spi_message*) ;

int rb4xx_cpld_read(unsigned char *rx_buf, unsigned count)
{
 static const unsigned char cmd[2] = { 128, 0 };
 struct spi_transfer t[2] = {
  {
   .tx_buf = &cmd,
   .len = 2,
  }, {
   .rx_buf = rx_buf,
   .len = count,
  },
 };
 struct spi_message m;

 if (rb4xx_cpld == ((void*)0))
  return -ENODEV;

 spi_message_init(&m);
 spi_message_add_tail(&t[0], &m);
 spi_message_add_tail(&t[1], &m);
 return spi_sync(rb4xx_cpld->spi, &m);
}
