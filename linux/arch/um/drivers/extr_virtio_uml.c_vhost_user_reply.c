
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct virtio_uml_device {int req_fd; } ;
struct TYPE_4__ {int size; int flags; } ;
struct TYPE_3__ {int integer; } ;
struct vhost_user_msg {TYPE_2__ header; TYPE_1__ payload; } ;


 int VHOST_USER_FLAG_NEED_REPLY ;
 int VHOST_USER_FLAG_REPLY ;
 int full_sendmsg_fds (int ,struct vhost_user_msg*,size_t,int *,int ) ;
 int vu_err (struct virtio_uml_device*,char*,int,size_t) ;

__attribute__((used)) static void vhost_user_reply(struct virtio_uml_device *vu_dev,
        struct vhost_user_msg *msg, int response)
{
 struct vhost_user_msg reply = {
  .payload.integer = response,
 };
 size_t size = sizeof(reply.header) + sizeof(reply.payload.integer);
 int rc;

 reply.header = msg->header;
 reply.header.flags &= ~VHOST_USER_FLAG_NEED_REPLY;
 reply.header.flags |= VHOST_USER_FLAG_REPLY;
 reply.header.size = sizeof(reply.payload.integer);

 rc = full_sendmsg_fds(vu_dev->req_fd, &reply, size, ((void*)0), 0);

 if (rc)
  vu_err(vu_dev,
         "sending reply to slave request failed: %d (size %zu)\n",
         rc, size);
}
