
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proxy_dev {int state; int chip; } ;


 int STATE_REGISTERED_FLAG ;
 int tpm_chip_unregister (int ) ;
 int vtpm_proxy_delete_proxy_dev (struct proxy_dev*) ;
 int vtpm_proxy_fops_undo_open (struct proxy_dev*) ;
 int vtpm_proxy_work_stop (struct proxy_dev*) ;

__attribute__((used)) static void vtpm_proxy_delete_device(struct proxy_dev *proxy_dev)
{
 vtpm_proxy_work_stop(proxy_dev);






 vtpm_proxy_fops_undo_open(proxy_dev);

 if (proxy_dev->state & STATE_REGISTERED_FLAG)
  tpm_chip_unregister(proxy_dev->chip);

 vtpm_proxy_delete_proxy_dev(proxy_dev);
}
