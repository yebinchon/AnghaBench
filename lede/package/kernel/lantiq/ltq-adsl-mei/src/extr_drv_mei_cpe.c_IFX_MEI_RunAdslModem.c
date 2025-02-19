
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


typedef int uint32_t ;
typedef int u32 ;
struct TYPE_15__ {int count; } ;
struct TYPE_14__ {int * nIrq; } ;
struct TYPE_13__ {scalar_t__ nCopy; scalar_t__ address; } ;
struct TYPE_12__ {int image_size; int modem_ready; int wait_queue_modemready; int nBar; TYPE_1__* adsl_mem_info; TYPE_3__* img_hdr; } ;
typedef int DSL_DEV_MeiError_t ;
typedef TYPE_2__ DSL_DEV_Device_t ;
typedef int ARC_SWP_PAGE_HDR ;
typedef TYPE_3__ ARC_IMG_HDR ;


 int DSL_DEV_MEI_ERR_FAILURE ;
 int DSL_DEV_MEI_ERR_SUCCESS ;
 TYPE_10__* DSL_DEV_PRIVATE (TYPE_2__*) ;
 int GFP_KERNEL ;
 size_t IFX_DYING_GASP ;
 int IFX_MEI_BarUpdate (TYPE_2__*,int ) ;
 int IFX_MEI_DMSG (char*,...) ;
 int IFX_MEI_DownloadBootCode (TYPE_2__*) ;
 int IFX_MEI_EMSG (char*) ;
 int IFX_MEI_HaltArc (TYPE_2__*) ;
 int IFX_MEI_ResetARC (TYPE_2__*) ;
 int IFX_MEI_RunArc (TYPE_2__*) ;
 int* LTQ_ICU_IM0_IER ;
 int* LTQ_ICU_IM2_IER ;
 int LTQ_USB_OC_INT ;
 int MAXSWAPSIZE ;
 int MAX_BAR_REGISTERS ;
 int MEI_MASK_AND_ACK_IRQ (int ) ;
 int MEI_WAIT_EVENT_TIMEOUT (int ,int) ;
 int SDRAM_SEGMENT_SIZE ;
 int disable_irq (int ) ;
 int enable_irq (int ) ;
 scalar_t__ kmalloc (int,int ) ;
 int ksize (int *) ;
 int * mei_arc_swap_buff ;

__attribute__((used)) static DSL_DEV_MeiError_t
IFX_MEI_RunAdslModem (DSL_DEV_Device_t *pDev)
{
 int nSize = 0, idx = 0;
 uint32_t im0_register, im2_register;


 if (mei_arc_swap_buff == ((void*)0)) {
  mei_arc_swap_buff =
   (u32 *) kmalloc (MAXSWAPSIZE * 4, GFP_KERNEL);
  if (mei_arc_swap_buff == ((void*)0)) {
   IFX_MEI_EMSG (">>> malloc fail for codeswap buff!!! <<<\n");
   return DSL_DEV_MEI_ERR_FAILURE;
  }
                IFX_MEI_DMSG("allocate %dKB swap buff memory at: 0x%p\n", ksize(mei_arc_swap_buff)/1024, mei_arc_swap_buff);
 }

 DSL_DEV_PRIVATE(pDev)->img_hdr =
  (ARC_IMG_HDR *) DSL_DEV_PRIVATE(pDev)->adsl_mem_info[0].address;
 if ((DSL_DEV_PRIVATE(pDev)->img_hdr->
      count) * sizeof (ARC_SWP_PAGE_HDR) > SDRAM_SEGMENT_SIZE) {
  IFX_MEI_EMSG ("firmware header size is bigger than 64K segment size\n");
  return DSL_DEV_MEI_ERR_FAILURE;
 }

 for (idx = 0; idx < MAX_BAR_REGISTERS; idx++) {
  nSize += DSL_DEV_PRIVATE(pDev)->adsl_mem_info[idx].nCopy;
 }
 if (nSize !=
     DSL_DEV_PRIVATE(pDev)->image_size) {
  IFX_MEI_EMSG ("Firmware download is not completed. Please download firmware again!\n");
  return DSL_DEV_MEI_ERR_FAILURE;
 }



 IFX_MEI_ResetARC (pDev);
 IFX_MEI_HaltArc (pDev);
 IFX_MEI_BarUpdate (pDev, DSL_DEV_PRIVATE(pDev)->nBar);



 IFX_MEI_DownloadBootCode (pDev);

 im0_register = (*LTQ_ICU_IM0_IER) & (1 << 20);
 im2_register = (*LTQ_ICU_IM2_IER) & (1 << 20);


 disable_irq (LTQ_USB_OC_INT);
 disable_irq (pDev->nIrq[IFX_DYING_GASP]);

 IFX_MEI_RunArc (pDev);

 MEI_WAIT_EVENT_TIMEOUT (DSL_DEV_PRIVATE(pDev)->wait_queue_modemready, 1000);

 MEI_MASK_AND_ACK_IRQ (LTQ_USB_OC_INT);
 MEI_MASK_AND_ACK_IRQ (pDev->nIrq[IFX_DYING_GASP]);


 enable_irq(pDev->nIrq[IFX_DYING_GASP]);
 *LTQ_ICU_IM0_IER |= im0_register;
 *LTQ_ICU_IM2_IER |= im2_register;

 if (DSL_DEV_PRIVATE(pDev)->modem_ready != 1) {
  IFX_MEI_EMSG ("Modem failed to be ready!\n");
  return DSL_DEV_MEI_ERR_FAILURE;
 } else {
  IFX_MEI_DMSG("Modem is ready.\n");
  return DSL_DEV_MEI_ERR_SUCCESS;
 }
}
