
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cdev_cfg_handle ;
 int sun4v_vintr_set_valid (int ,unsigned long,int) ;

int vio_set_intr(unsigned long dev_ino, int state)
{
 int err;

 err = sun4v_vintr_set_valid(cdev_cfg_handle, dev_ino, state);
 return err;
}
