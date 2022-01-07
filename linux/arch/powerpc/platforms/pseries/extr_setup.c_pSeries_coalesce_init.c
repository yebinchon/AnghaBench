
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hvcall_mpp_x_data {int dummy; } ;


 int FW_FEATURE_CMO ;
 int FW_FEATURE_XCMO ;
 scalar_t__ firmware_has_feature (int ) ;
 int h_get_mpp_x (struct hvcall_mpp_x_data*) ;
 int powerpc_firmware_features ;

void pSeries_coalesce_init(void)
{
 struct hvcall_mpp_x_data mpp_x_data;

 if (firmware_has_feature(FW_FEATURE_CMO) && !h_get_mpp_x(&mpp_x_data))
  powerpc_firmware_features |= FW_FEATURE_XCMO;
 else
  powerpc_firmware_features &= ~FW_FEATURE_XCMO;
}
