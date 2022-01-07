
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slice_mask {unsigned long low_slices; int high_slices; } ;
struct mm_struct {int context; } ;


 int SLB_ADDR_LIMIT_DEFAULT ;
 int SLICE_NUM_HIGH ;
 int SLICE_NUM_LOW ;
 int bitmap_fill (int ,int) ;
 int memset (unsigned char*,unsigned int,int) ;
 unsigned char* mm_ctx_high_slices (int *) ;
 unsigned char* mm_ctx_low_slices (int *) ;
 int mm_ctx_set_slb_addr_limit (int *,int ) ;
 int mm_ctx_set_user_psize (int *,unsigned int) ;
 unsigned int mmu_virtual_psize ;
 int slice_dbg (char*,struct mm_struct*) ;
 struct slice_mask* slice_mask_for_size (int *,unsigned int) ;

void slice_init_new_context_exec(struct mm_struct *mm)
{
 unsigned char *hpsizes, *lpsizes;
 struct slice_mask *mask;
 unsigned int psize = mmu_virtual_psize;

 slice_dbg("slice_init_new_context_exec(mm=%p)\n", mm);






 mm_ctx_set_slb_addr_limit(&mm->context, SLB_ADDR_LIMIT_DEFAULT);
 mm_ctx_set_user_psize(&mm->context, psize);




 lpsizes = mm_ctx_low_slices(&mm->context);
 memset(lpsizes, (psize << 4) | psize, SLICE_NUM_LOW >> 1);

 hpsizes = mm_ctx_high_slices(&mm->context);
 memset(hpsizes, (psize << 4) | psize, SLICE_NUM_HIGH >> 1);




 mask = slice_mask_for_size(&mm->context, psize);
 mask->low_slices = ~0UL;
 if (SLICE_NUM_HIGH)
  bitmap_fill(mask->high_slices, SLICE_NUM_HIGH);
}
