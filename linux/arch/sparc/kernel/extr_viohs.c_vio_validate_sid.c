
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct vio_msg_tag {scalar_t__ type; scalar_t__ stype; scalar_t__ stype_env; scalar_t__ sid; } ;
struct vio_driver_state {int dev_class; scalar_t__ _peer_sid; scalar_t__ _local_sid; } ;


 int DATA ;
 int EINVAL ;




 scalar_t__ VIO_SUBTYPE_INFO ;
 scalar_t__ VIO_TYPE_CTRL ;
 scalar_t__ VIO_VER_INFO ;
 int viodbg (int ,char*,scalar_t__,scalar_t__,scalar_t__) ;

int vio_validate_sid(struct vio_driver_state *vio, struct vio_msg_tag *tp)
{
 u32 sid;




 if (tp->type == VIO_TYPE_CTRL &&
     tp->stype == VIO_SUBTYPE_INFO &&
     tp->stype_env == VIO_VER_INFO)
  return 0;


 switch (vio->dev_class) {
 case 129:
 case 128:
 case 130:
 default:
  sid = vio->_peer_sid;
  break;

 case 131:
  sid = vio->_local_sid;
  break;
 }

 if (sid == tp->sid)
  return 0;
 viodbg(DATA, "BAD SID tag->sid[%08x] peer_sid[%08x] local_sid[%08x]\n",
        tp->sid, vio->_peer_sid, vio->_local_sid);
 return -EINVAL;
}
