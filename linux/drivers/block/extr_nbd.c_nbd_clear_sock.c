
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nbd_device {int * task_setup; } ;


 int nbd_clear_que (struct nbd_device*) ;
 int sock_shutdown (struct nbd_device*) ;

__attribute__((used)) static void nbd_clear_sock(struct nbd_device *nbd)
{
 sock_shutdown(nbd);
 nbd_clear_que(nbd);
 nbd->task_setup = ((void*)0);
}
