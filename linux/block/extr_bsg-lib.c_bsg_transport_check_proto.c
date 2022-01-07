
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_io_v4 {scalar_t__ protocol; scalar_t__ subprotocol; } ;


 scalar_t__ BSG_PROTOCOL_SCSI ;
 scalar_t__ BSG_SUB_PROTOCOL_SCSI_TRANSPORT ;
 int CAP_SYS_RAWIO ;
 int EINVAL ;
 int EPERM ;
 int capable (int ) ;

__attribute__((used)) static int bsg_transport_check_proto(struct sg_io_v4 *hdr)
{
 if (hdr->protocol != BSG_PROTOCOL_SCSI ||
     hdr->subprotocol != BSG_SUB_PROTOCOL_SCSI_TRANSPORT)
  return -EINVAL;
 if (!capable(CAP_SYS_RAWIO))
  return -EPERM;
 return 0;
}
