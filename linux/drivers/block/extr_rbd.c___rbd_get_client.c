
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbd_client {int kref; } ;


 int kref_get (int *) ;

__attribute__((used)) static struct rbd_client *__rbd_get_client(struct rbd_client *rbdc)
{
 kref_get(&rbdc->kref);

 return rbdc;
}
