
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vio_msg_tag {int sid; } ;
struct vio_driver_state {int dummy; } ;


 int vio_ldc_send (struct vio_driver_state*,struct vio_msg_tag*,int) ;
 int vio_send_sid (struct vio_driver_state*) ;

__attribute__((used)) static int send_ctrl(struct vio_driver_state *vio,
       struct vio_msg_tag *tag, int len)
{
 tag->sid = vio_send_sid(vio);
 return vio_ldc_send(vio, tag, len);
}
