
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {scalar_t__ checksum1; scalar_t__ netfn_rs_lun; } ;
struct ipmb_dev {TYPE_1__ request; } ;



__attribute__((used)) static u8 ipmb_verify_checksum1(struct ipmb_dev *ipmb_dev, u8 rs_sa)
{

 return (rs_sa + ipmb_dev->request.netfn_rs_lun +
  ipmb_dev->request.checksum1);
}
