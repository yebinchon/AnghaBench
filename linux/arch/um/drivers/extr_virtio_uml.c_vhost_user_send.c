
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct virtio_uml_device {int protocol_features; int sock; } ;
struct TYPE_2__ {int size; int flags; } ;
struct vhost_user_msg {TYPE_1__ header; } ;


 int BIT_ULL (int ) ;
 int EIO ;
 int VHOST_USER_FLAG_NEED_REPLY ;
 int VHOST_USER_PROTOCOL_F_REPLY_ACK ;
 int VHOST_USER_VERSION ;
 int full_sendmsg_fds (int ,struct vhost_user_msg*,size_t,int*,size_t) ;
 int vhost_user_recv_u64 (struct virtio_uml_device*,scalar_t__*) ;
 int vu_err (struct virtio_uml_device*,char*,scalar_t__) ;

__attribute__((used)) static int vhost_user_send(struct virtio_uml_device *vu_dev,
      bool need_response, struct vhost_user_msg *msg,
      int *fds, size_t num_fds)
{
 size_t size = sizeof(msg->header) + msg->header.size;
 bool request_ack;
 int rc;

 msg->header.flags |= VHOST_USER_VERSION;






 request_ack = !need_response;
 if (!(vu_dev->protocol_features &
   BIT_ULL(VHOST_USER_PROTOCOL_F_REPLY_ACK)))
  request_ack = 0;

 if (request_ack)
  msg->header.flags |= VHOST_USER_FLAG_NEED_REPLY;

 rc = full_sendmsg_fds(vu_dev->sock, msg, size, fds, num_fds);
 if (rc < 0)
  return rc;

 if (request_ack) {
  uint64_t status;

  rc = vhost_user_recv_u64(vu_dev, &status);
  if (rc)
   return rc;

  if (status) {
   vu_err(vu_dev, "slave reports error: %llu\n", status);
   return -EIO;
  }
 }

 return 0;
}
