
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ s64 ;
typedef int __be64 ;
typedef int __be32 ;


 int EIO ;
 int be32_to_cpu (int ) ;
 int be64_to_cpu (int ) ;
 scalar_t__ opal_xive_get_vp_info (int,int *,int *,int *,int *) ;

int xive_native_get_vp_info(u32 vp_id, u32 *out_cam_id, u32 *out_chip_id)
{
 __be64 vp_cam_be;
 __be32 vp_chip_id_be;
 s64 rc;

 rc = opal_xive_get_vp_info(vp_id, ((void*)0), &vp_cam_be, ((void*)0), &vp_chip_id_be);
 if (rc)
  return -EIO;
 *out_cam_id = be64_to_cpu(vp_cam_be) & 0xffffffffu;
 *out_chip_id = be32_to_cpu(vp_chip_id_be);

 return 0;
}
