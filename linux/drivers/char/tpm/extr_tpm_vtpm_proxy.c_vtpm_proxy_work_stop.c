
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proxy_dev {int work; } ;


 int flush_work (int *) ;
 int vtpm_proxy_fops_undo_open (struct proxy_dev*) ;

__attribute__((used)) static void vtpm_proxy_work_stop(struct proxy_dev *proxy_dev)
{
 vtpm_proxy_fops_undo_open(proxy_dev);
 flush_work(&proxy_dev->work);
}
