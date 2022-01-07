
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_transfer {int len; int tx_buf; int * rx_buf; } ;
struct moxtet {int lock; int dev; int count; int tx; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spi_sync_transfer (int ,struct spi_transfer*,int) ;
 int to_spi_device (int ) ;

__attribute__((used)) static int moxtet_spi_read(struct moxtet *moxtet, u8 *buf)
{
 struct spi_transfer xfer = {
  .rx_buf = buf,
  .tx_buf = moxtet->tx,
  .len = moxtet->count + 1
 };
 int ret;

 mutex_lock(&moxtet->lock);

 ret = spi_sync_transfer(to_spi_device(moxtet->dev), &xfer, 1);

 mutex_unlock(&moxtet->lock);

 return ret;
}
