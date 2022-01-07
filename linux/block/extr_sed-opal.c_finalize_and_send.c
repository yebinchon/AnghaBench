
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opal_dev {int pos; int cmd; int tsn; int hsn; } ;
typedef int cont_fn ;


 int cmd_finalize (struct opal_dev*,int ,int ) ;
 int opal_send_recv (struct opal_dev*,int ) ;
 int pr_debug (char*,int) ;
 int print_buffer (int ,int ) ;

__attribute__((used)) static int finalize_and_send(struct opal_dev *dev, cont_fn cont)
{
 int ret;

 ret = cmd_finalize(dev, dev->hsn, dev->tsn);
 if (ret) {
  pr_debug("Error finalizing command buffer: %d\n", ret);
  return ret;
 }

 print_buffer(dev->cmd, dev->pos);

 return opal_send_recv(dev, cont);
}
