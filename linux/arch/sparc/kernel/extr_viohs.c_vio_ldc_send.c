
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vio_driver_state {int lp; } ;


 int EAGAIN ;
 int EINVAL ;
 int ldc_write (int ,void*,int) ;
 int udelay (int) ;

int vio_ldc_send(struct vio_driver_state *vio, void *data, int len)
{
 int err, limit = 1000;

 err = -EINVAL;
 while (limit-- > 0) {
  err = ldc_write(vio->lp, data, len);
  if (!err || (err != -EAGAIN))
   break;
  udelay(1);
 }

 return err;
}
