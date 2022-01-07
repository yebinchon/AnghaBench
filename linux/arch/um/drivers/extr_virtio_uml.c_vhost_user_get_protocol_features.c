
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct virtio_uml_device {int dummy; } ;


 int VHOST_USER_GET_PROTOCOL_FEATURES ;
 int vhost_user_recv_u64 (struct virtio_uml_device*,int *) ;
 int vhost_user_send_no_payload (struct virtio_uml_device*,int,int ) ;

__attribute__((used)) static int vhost_user_get_protocol_features(struct virtio_uml_device *vu_dev,
         u64 *protocol_features)
{
 int rc = vhost_user_send_no_payload(vu_dev, 1,
   VHOST_USER_GET_PROTOCOL_FEATURES);

 if (rc)
  return rc;
 return vhost_user_recv_u64(vu_dev, protocol_features);
}
