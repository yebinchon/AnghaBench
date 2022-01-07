
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_socket {scalar_t__ rbuf; scalar_t__ sbuf; } ;


 int free_page (unsigned long) ;

__attribute__((used)) static void drbd_free_socket(struct drbd_socket *socket)
{
 free_page((unsigned long) socket->sbuf);
 free_page((unsigned long) socket->rbuf);
}
