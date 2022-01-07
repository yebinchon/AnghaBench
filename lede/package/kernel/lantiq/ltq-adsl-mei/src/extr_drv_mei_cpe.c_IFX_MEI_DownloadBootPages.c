
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {TYPE_2__* img_hdr; } ;
struct TYPE_5__ {int count; TYPE_1__* page; } ;
struct TYPE_4__ {int p_size; int d_size; } ;
typedef int DSL_DEV_MeiError_t ;
typedef int DSL_DEV_Device_t ;


 int BOOT_FLAG ;
 int DSL_DEV_MEI_ERR_SUCCESS ;
 TYPE_3__* DSL_DEV_PRIVATE (int *) ;
 int GET_DATA ;
 int GET_PROG ;
 int IFX_MEI_DMAWrite (int *,int ,int ,int) ;
 int IFX_MEI_GetPage (int *,int,int ,int ,int ,int *) ;
 int MAXSWAPSIZE ;
 int mei_arc_swap_buff ;

__attribute__((used)) static DSL_DEV_MeiError_t
IFX_MEI_DownloadBootPages (DSL_DEV_Device_t * pDev)
{
 int boot_loop;
 int page_size;
 u32 dest_addr;





 for (boot_loop = 1;
      boot_loop <
      (DSL_DEV_PRIVATE(pDev)->img_hdr-> count); boot_loop++) {
  if ((DSL_DEV_PRIVATE(pDev)-> img_hdr->page[boot_loop].p_size) & BOOT_FLAG) {
   page_size = IFX_MEI_GetPage (pDev, boot_loop,
             GET_PROG, MAXSWAPSIZE,
             mei_arc_swap_buff,
             &dest_addr);
   if (page_size > 0) {
    IFX_MEI_DMAWrite (pDev, dest_addr,
       mei_arc_swap_buff,
       page_size);
   }
  }
  if ((DSL_DEV_PRIVATE(pDev)-> img_hdr->page[boot_loop].d_size) & BOOT_FLAG) {
   page_size = IFX_MEI_GetPage (pDev, boot_loop,
             GET_DATA, MAXSWAPSIZE,
             mei_arc_swap_buff,
             &dest_addr);
   if (page_size > 0) {
    IFX_MEI_DMAWrite (pDev, dest_addr,
       mei_arc_swap_buff,
       page_size);
   }
  }
 }
 return DSL_DEV_MEI_ERR_SUCCESS;
}
