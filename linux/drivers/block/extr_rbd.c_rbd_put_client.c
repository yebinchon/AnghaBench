
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbd_client {int kref; } ;


 int kref_put (int *,int ) ;
 int rbd_client_release ;

__attribute__((used)) static void rbd_put_client(struct rbd_client *rbdc)
{
 if (rbdc)
  kref_put(&rbdc->kref, rbd_client_release);
}
