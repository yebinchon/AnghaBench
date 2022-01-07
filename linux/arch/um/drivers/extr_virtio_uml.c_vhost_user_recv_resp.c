
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtio_uml_device {int sock; } ;
struct TYPE_2__ {int flags; } ;
struct vhost_user_msg {TYPE_1__ header; } ;


 int EPROTO ;
 int VHOST_USER_FLAG_REPLY ;
 int VHOST_USER_VERSION ;
 int vhost_user_recv (int ,struct vhost_user_msg*,size_t) ;

__attribute__((used)) static int vhost_user_recv_resp(struct virtio_uml_device *vu_dev,
    struct vhost_user_msg *msg,
    size_t max_payload_size)
{
 int rc = vhost_user_recv(vu_dev->sock, msg, max_payload_size);

 if (rc)
  return rc;

 if (msg->header.flags != (VHOST_USER_FLAG_REPLY | VHOST_USER_VERSION))
  return -EPROTO;

 return 0;
}
