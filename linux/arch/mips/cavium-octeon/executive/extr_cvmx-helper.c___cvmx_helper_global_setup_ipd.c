
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CVMX_FPA_PACKET_POOL_SIZE ;
 int CVMX_FPA_WQE_POOL ;
 int CVMX_HELPER_ENABLE_BACK_PRESSURE ;
 int CVMX_HELPER_FIRST_MBUFF_SKIP ;
 int CVMX_HELPER_NOT_FIRST_MBUFF_SKIP ;
 int CVMX_IPD_OPC_MODE_STT ;
 int cvmx_ipd_config (int,int,int,int,int,int ,int ,int ) ;

__attribute__((used)) static int __cvmx_helper_global_setup_ipd(void)
{

 cvmx_ipd_config(CVMX_FPA_PACKET_POOL_SIZE / 8,
   CVMX_HELPER_FIRST_MBUFF_SKIP / 8,
   CVMX_HELPER_NOT_FIRST_MBUFF_SKIP / 8,

   (CVMX_HELPER_FIRST_MBUFF_SKIP + 8) / 128,

   (CVMX_HELPER_NOT_FIRST_MBUFF_SKIP + 8) / 128,
   CVMX_FPA_WQE_POOL,
   CVMX_IPD_OPC_MODE_STT,
   CVMX_HELPER_ENABLE_BACK_PRESSURE);
 return 0;
}
