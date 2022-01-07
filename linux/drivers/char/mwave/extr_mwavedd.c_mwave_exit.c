
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* pMWAVE_DEVICE_DATA ;
struct TYPE_3__ {size_t nr_registered_attrs; int device_registered; scalar_t__ sLine; int rBDData; scalar_t__ bBDInitialized; scalar_t__ bResourcesClaimed; scalar_t__ bDSPEnabled; scalar_t__ bMwaveDevRegistered; } ;


 int PRINTK_1 (int ,char*) ;
 int TRACE_MWAVE ;
 int device_remove_file (int *,int ) ;
 int device_unregister (int *) ;
 size_t i ;
 int misc_deregister (int *) ;
 int * mwave_dev_attrs ;
 int mwave_device ;
 int mwave_misc_dev ;
 TYPE_1__ mwave_s_mdd ;
 int serial8250_unregister_port (scalar_t__) ;
 int tp3780I_Cleanup (int *) ;
 int tp3780I_DisableDSP (int *) ;
 int tp3780I_ReleaseResources (int *) ;

__attribute__((used)) static void mwave_exit(void)
{
 pMWAVE_DEVICE_DATA pDrvData = &mwave_s_mdd;

 PRINTK_1(TRACE_MWAVE, "mwavedd::mwave_exit entry\n");
 if ( pDrvData->sLine >= 0 ) {
  serial8250_unregister_port(pDrvData->sLine);
 }
 if (pDrvData->bMwaveDevRegistered) {
  misc_deregister(&mwave_misc_dev);
 }
 if (pDrvData->bDSPEnabled) {
  tp3780I_DisableDSP(&pDrvData->rBDData);
 }
 if (pDrvData->bResourcesClaimed) {
  tp3780I_ReleaseResources(&pDrvData->rBDData);
 }
 if (pDrvData->bBDInitialized) {
  tp3780I_Cleanup(&pDrvData->rBDData);
 }

 PRINTK_1(TRACE_MWAVE, "mwavedd::mwave_exit exit\n");
}
