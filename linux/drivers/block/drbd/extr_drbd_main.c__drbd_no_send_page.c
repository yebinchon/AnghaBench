
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct socket {int dummy; } ;
struct page {int dummy; } ;
struct drbd_peer_device {TYPE_2__* device; TYPE_3__* connection; } ;
struct TYPE_4__ {struct socket* socket; } ;
struct TYPE_6__ {TYPE_1__ data; } ;
struct TYPE_5__ {size_t send_cnt; } ;


 int drbd_send_all (TYPE_3__*,struct socket*,void*,size_t,unsigned int) ;
 void* kmap (struct page*) ;
 int kunmap (struct page*) ;

__attribute__((used)) static int _drbd_no_send_page(struct drbd_peer_device *peer_device, struct page *page,
         int offset, size_t size, unsigned msg_flags)
{
 struct socket *socket;
 void *addr;
 int err;

 socket = peer_device->connection->data.socket;
 addr = kmap(page) + offset;
 err = drbd_send_all(peer_device->connection, socket, addr, size, msg_flags);
 kunmap(page);
 if (!err)
  peer_device->device->send_cnt += size >> 9;
 return err;
}
