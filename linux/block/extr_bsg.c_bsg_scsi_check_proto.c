
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_io_v4 {scalar_t__ protocol; scalar_t__ subprotocol; } ;


 scalar_t__ BSG_PROTOCOL_SCSI ;
 scalar_t__ BSG_SUB_PROTOCOL_SCSI_CMD ;
 int EINVAL ;

__attribute__((used)) static int bsg_scsi_check_proto(struct sg_io_v4 *hdr)
{
 if (hdr->protocol != BSG_PROTOCOL_SCSI ||
     hdr->subprotocol != BSG_SUB_PROTOCOL_SCSI_CMD)
  return -EINVAL;
 return 0;
}
