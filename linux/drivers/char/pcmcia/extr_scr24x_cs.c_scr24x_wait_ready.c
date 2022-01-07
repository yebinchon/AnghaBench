
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct scr24x_dev {scalar_t__ regs; } ;


 int EIO ;
 scalar_t__ SCR24X_CMD_STATUS ;
 int STATUS_BUSY ;
 int ioread8 (scalar_t__) ;
 int msleep (int) ;

__attribute__((used)) static int scr24x_wait_ready(struct scr24x_dev *dev)
{
 u_char status;
 int timeout = 100;

 do {
  status = ioread8(dev->regs + SCR24X_CMD_STATUS);
  if (!(status & STATUS_BUSY))
   return 0;

  msleep(20);
 } while (--timeout);

 return -EIO;
}
