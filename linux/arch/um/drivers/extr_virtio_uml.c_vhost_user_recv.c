
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t size; } ;
struct vhost_user_msg {int payload; TYPE_1__ header; } ;


 int EPROTO ;
 int full_read (int,int *,size_t) ;
 int vhost_user_recv_header (int,struct vhost_user_msg*) ;

__attribute__((used)) static int vhost_user_recv(int fd, struct vhost_user_msg *msg,
      size_t max_payload_size)
{
 size_t size;
 int rc = vhost_user_recv_header(fd, msg);

 if (rc)
  return rc;
 size = msg->header.size;
 if (size > max_payload_size)
  return -EPROTO;
 return full_read(fd, &msg->payload, size);
}
