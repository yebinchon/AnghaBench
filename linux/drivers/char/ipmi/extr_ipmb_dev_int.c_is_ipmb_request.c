
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int netfn_rs_lun; } ;
struct ipmb_dev {scalar_t__ msg_idx; TYPE_1__ request; } ;


 scalar_t__ IPMB_REQUEST_LEN_MIN ;
 int NETFN_RSP_BIT_MASK ;
 scalar_t__ ipmb_verify_checksum1 (struct ipmb_dev*,int ) ;

__attribute__((used)) static bool is_ipmb_request(struct ipmb_dev *ipmb_dev, u8 rs_sa)
{
 if (ipmb_dev->msg_idx >= IPMB_REQUEST_LEN_MIN) {
  if (ipmb_verify_checksum1(ipmb_dev, rs_sa))
   return 0;
  if (!(ipmb_dev->request.netfn_rs_lun & NETFN_RSP_BIT_MASK))
   return 1;
 }
 return 0;
}
