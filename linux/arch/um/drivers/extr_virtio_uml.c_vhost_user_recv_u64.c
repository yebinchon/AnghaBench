
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct virtio_uml_device {int dummy; } ;
struct TYPE_4__ {int integer; } ;
struct TYPE_3__ {int size; } ;
struct vhost_user_msg {TYPE_2__ payload; TYPE_1__ header; } ;


 int EPROTO ;
 int vhost_user_recv_resp (struct virtio_uml_device*,struct vhost_user_msg*,int) ;

__attribute__((used)) static int vhost_user_recv_u64(struct virtio_uml_device *vu_dev,
          u64 *value)
{
 struct vhost_user_msg msg;
 int rc = vhost_user_recv_resp(vu_dev, &msg,
          sizeof(msg.payload.integer));

 if (rc)
  return rc;
 if (msg.header.size != sizeof(msg.payload.integer))
  return -EPROTO;
 *value = msg.payload.integer;
 return 0;
}
