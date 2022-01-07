
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xilly_endpoint {int ep_list; } ;


 int ep_list_lock ;
 int flush_workqueue (int ) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int xilly_quiesce (struct xilly_endpoint*) ;
 int xillybus_cleanup_chrdev (struct xilly_endpoint*) ;
 int xillybus_wq ;

void xillybus_endpoint_remove(struct xilly_endpoint *endpoint)
{
 xillybus_cleanup_chrdev(endpoint);

 mutex_lock(&ep_list_lock);
 list_del(&endpoint->ep_list);
 mutex_unlock(&ep_list_lock);

 xilly_quiesce(endpoint);





 flush_workqueue(xillybus_wq);
}
