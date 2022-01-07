
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scr24x_dev {scalar_t__ regs; int * buf; } ;


 int CMD_READ_BYTE ;
 scalar_t__ SCR24X_CMD_STATUS ;
 scalar_t__ SCR24X_DATA (size_t) ;
 int ioread8 (scalar_t__) ;
 int iowrite8 (int ,scalar_t__) ;
 int scr24x_wait_ready (struct scr24x_dev*) ;

__attribute__((used)) static int read_chunk(struct scr24x_dev *dev, size_t offset, size_t limit)
{
 size_t i, y;
 int ret;

 for (i = offset; i < limit; i += 5) {
  iowrite8(CMD_READ_BYTE, dev->regs + SCR24X_CMD_STATUS);
  ret = scr24x_wait_ready(dev);
  if (ret < 0)
   return ret;

  for (y = 0; y < 5 && i + y < limit; y++)
   dev->buf[i + y] = ioread8(dev->regs + SCR24X_DATA(y));
 }

 return 0;
}
