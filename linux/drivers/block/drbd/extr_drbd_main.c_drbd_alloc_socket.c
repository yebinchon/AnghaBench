
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_socket {void* sbuf; void* rbuf; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ __get_free_page (int ) ;

__attribute__((used)) static int drbd_alloc_socket(struct drbd_socket *socket)
{
 socket->rbuf = (void *) __get_free_page(GFP_KERNEL);
 if (!socket->rbuf)
  return -ENOMEM;
 socket->sbuf = (void *) __get_free_page(GFP_KERNEL);
 if (!socket->sbuf)
  return -ENOMEM;
 return 0;
}
