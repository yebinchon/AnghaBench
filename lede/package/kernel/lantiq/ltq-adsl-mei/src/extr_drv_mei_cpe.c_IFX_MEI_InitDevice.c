
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
typedef int smmu_mem_info_t ;
typedef int ifx_mei_device_private_t ;
struct TYPE_7__ {int mei_cmv_sema; int wait_queue_modemready; int wait_queue_arcmsgav; scalar_t__ arcmsgav; scalar_t__ modem_ready; int * adsl_mem_info; } ;
struct TYPE_6__ {int * nIrq; scalar_t__ nInUse; scalar_t__ base_address; int * pPriv; } ;
typedef TYPE_1__ DSL_DEV_Device_t ;


 TYPE_4__* DSL_DEV_PRIVATE (TYPE_1__*) ;
 int ENOMEM ;
 size_t IFX_DFEIR ;
 size_t IFX_DYING_GASP ;
 int IFX_MEI_EMSG (char*,int ) ;
 int IFX_MEI_IrqHandle ;
 scalar_t__ KSEG1 ;
 scalar_t__ LTQ_MEI_BASE_ADDR ;
 int LTQ_MEI_DYING_GASP_INT ;
 int LTQ_MEI_INT ;
 int* LTQ_PMU_PWDCR ;
 int MAX_BAR_REGISTERS ;
 int MEI_INIT_WAKELIST (char*,int ) ;
 int MEI_MASK_AND_ACK_IRQ (int ) ;
 int MEI_MUTEX_INIT (int ,int) ;
 TYPE_1__* dsl_devices ;
 int ltq_r32 (int*) ;
 int ltq_w32 (int,int*) ;
 int memset (int *,int ,int) ;
 scalar_t__ request_irq (int ,int ,int ,char*,TYPE_1__*) ;
 int * sDanube_Mei_Private ;

__attribute__((used)) static int
IFX_MEI_InitDevice (int num)
{
 DSL_DEV_Device_t *pDev;
        u32 temp;
 pDev = &dsl_devices[num];
 if (pDev == ((void*)0))
  return -ENOMEM;
 pDev->pPriv = &sDanube_Mei_Private[num];
 memset (pDev->pPriv, 0, sizeof (ifx_mei_device_private_t));

 memset (&DSL_DEV_PRIVATE(pDev)->
  adsl_mem_info[0], 0,
  sizeof (smmu_mem_info_t) * MAX_BAR_REGISTERS);

 if (num == 0) {
  pDev->nIrq[IFX_DFEIR] = LTQ_MEI_INT;
  pDev->nIrq[IFX_DYING_GASP] = LTQ_MEI_DYING_GASP_INT;
  pDev->base_address = KSEG1 + LTQ_MEI_BASE_ADDR;






  temp = ltq_r32(LTQ_PMU_PWDCR);
  temp &= 0xffff7dbe;
  ltq_w32(temp, LTQ_PMU_PWDCR);
 }
 pDev->nInUse = 0;
 DSL_DEV_PRIVATE(pDev)->modem_ready = 0;
 DSL_DEV_PRIVATE(pDev)->arcmsgav = 0;

 MEI_INIT_WAKELIST ("arcq", DSL_DEV_PRIVATE(pDev)->wait_queue_arcmsgav);
 MEI_INIT_WAKELIST ("arcr", DSL_DEV_PRIVATE(pDev)->wait_queue_modemready);

 MEI_MUTEX_INIT (DSL_DEV_PRIVATE(pDev)->mei_cmv_sema, 1);




 if (request_irq (pDev->nIrq[IFX_DFEIR], IFX_MEI_IrqHandle, 0, "DFEIR", pDev) != 0) {
  IFX_MEI_EMSG ("request_irq %d failed!\n", pDev->nIrq[IFX_DFEIR]);
  return -1;
 }





 return 0;
}
