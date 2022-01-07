
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cn_dev {int cbdev; } ;
struct cb_id {int dummy; } ;


 struct cn_dev cdev ;
 int cn_queue_del_callback (int ,struct cb_id*) ;

void cn_del_callback(struct cb_id *id)
{
 struct cn_dev *dev = &cdev;

 cn_queue_del_callback(dev->cbdev, id);
}
