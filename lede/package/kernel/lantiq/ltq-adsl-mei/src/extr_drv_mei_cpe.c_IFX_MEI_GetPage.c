
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct TYPE_8__ {TYPE_3__* img_hdr; TYPE_1__* adsl_mem_info; } ;
struct TYPE_7__ {scalar_t__ count; TYPE_2__* page; } ;
struct TYPE_6__ {scalar_t__ d_size; scalar_t__ p_size; scalar_t__ d_offset; scalar_t__ p_offset; scalar_t__ d_dest; scalar_t__ p_dest; } ;
struct TYPE_5__ {scalar_t__ address; } ;
typedef int DSL_DEV_Device_t ;


 scalar_t__ BOOT_FLAG_MASK ;
 TYPE_4__* DSL_DEV_PRIVATE (int *) ;
 scalar_t__ GET_DATA ;
 scalar_t__ KSEG1ADDR (scalar_t__) ;
 scalar_t__ SDRAM_SEGMENT_SIZE ;

__attribute__((used)) static int
IFX_MEI_GetPage (DSL_DEV_Device_t * pDev, u32 Page, u32 data,
         u32 MaxSize, u32 * Buffer, u32 * Dest)
{
 u32 size;
 u32 i;
 u32 *p;
 u32 idx, offset, nBar = 0;

 if (Page > DSL_DEV_PRIVATE(pDev)->img_hdr->count)
  return -2;



 size = (data == GET_DATA) ? (DSL_DEV_PRIVATE(pDev)->img_hdr->page[Page].d_size) :
        (DSL_DEV_PRIVATE(pDev)->img_hdr->page[Page].p_size);
 size &= BOOT_FLAG_MASK;
 if (size > MaxSize)
  return -1;

 if (size == 0)
  return 0;



 i = data ? (DSL_DEV_PRIVATE(pDev)->img_hdr->page[Page].d_offset) :
   (DSL_DEV_PRIVATE(pDev)->img_hdr->page[Page].p_offset);





 idx = i / SDRAM_SEGMENT_SIZE;
 offset = i % SDRAM_SEGMENT_SIZE;
 p = (u32 *) ((u8 *) DSL_DEV_PRIVATE(pDev)->adsl_mem_info[idx].address + offset);

 for (i = 0; i < size; i++) {
  if (offset + i * 4 - (nBar * SDRAM_SEGMENT_SIZE) >= SDRAM_SEGMENT_SIZE) {
   idx++;
   nBar++;
   p = (u32 *) ((u8 *) KSEG1ADDR ((u32)DSL_DEV_PRIVATE(pDev)->adsl_mem_info[idx].address));
  }
  Buffer[i] = *p++;
 }




 *Dest = data ? (DSL_DEV_PRIVATE(pDev)-> img_hdr->page[Page].d_dest) :
    (DSL_DEV_PRIVATE(pDev)->img_hdr->page[Page].p_dest);

 return size;
}
