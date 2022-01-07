
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* address; char* org_address; int size; } ;
typedef TYPE_1__ smmu_mem_info_t ;
struct TYPE_7__ {TYPE_1__* adsl_mem_info; } ;
typedef TYPE_2__ ifx_mei_device_private_t ;
struct TYPE_8__ {scalar_t__ pPriv; } ;
typedef TYPE_3__ DSL_DEV_Device_t ;


 int EFBIG ;
 int ENOMEM ;
 int FREE_ALL ;
 int GFP_KERNEL ;
 int IFX_MEI_DFEMemoryFree (TYPE_3__*,int ) ;
 int IFX_MEI_DMSG (char*,long) ;
 int IFX_MEI_EMSG (char*,...) ;
 int MAX_BAR_REGISTERS ;
 long SDRAM_SEGMENT_SIZE ;
 int XDATA_REGISTER ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;

__attribute__((used)) static int
IFX_MEI_DFEMemoryAlloc (DSL_DEV_Device_t * pDev, long size)
{
 unsigned long mem_ptr;
 char *org_mem_ptr = ((void*)0);
 int idx = 0;
 long total_size = 0;
 int err = 0;
 smmu_mem_info_t *adsl_mem_info =
  ((ifx_mei_device_private_t *) pDev->pPriv)->adsl_mem_info;

 int allocate_size = SDRAM_SEGMENT_SIZE;

 IFX_MEI_DMSG("image_size = %ld\n", size);

 for (idx = 0; size > 0 && idx < MAX_BAR_REGISTERS; idx++) {

  if (idx == XDATA_REGISTER)
   continue;







                if (idx == (MAX_BAR_REGISTERS - 1))
                        allocate_size = size;
                else
                        allocate_size = SDRAM_SEGMENT_SIZE;

  org_mem_ptr = kmalloc (allocate_size, GFP_KERNEL);
  if (org_mem_ptr == ((void*)0)) {
                        IFX_MEI_EMSG ("%d: kmalloc %d bytes memory fail!\n", idx, allocate_size);
   err = -ENOMEM;
   goto allocate_error;
  }

  if (((unsigned long)org_mem_ptr) & (1023)) {



   kfree(org_mem_ptr);
   org_mem_ptr = kmalloc (allocate_size + 1024, GFP_KERNEL);
   if (org_mem_ptr == ((void*)0)) {
    IFX_MEI_EMSG ("%d: kmalloc %d bytes memory fail!\n",
                  idx, allocate_size + 1024);
    err = -ENOMEM;
    goto allocate_error;
   }
   mem_ptr = (unsigned long) (org_mem_ptr + 1023) & ~(1024 -1);
  } else {
   mem_ptr = (unsigned long) org_mem_ptr;
  }

                adsl_mem_info[idx].address = (char *) mem_ptr;
                adsl_mem_info[idx].org_address = org_mem_ptr;
                adsl_mem_info[idx].size = allocate_size;
                size -= allocate_size;
                total_size += allocate_size;
 }
 if (size > 0) {
  IFX_MEI_EMSG ("Image size is too large!\n");
  err = -EFBIG;
  goto allocate_error;
 }
 err = idx;
 return err;

      allocate_error:
 IFX_MEI_DFEMemoryFree (pDev, FREE_ALL);
 return err;
}
