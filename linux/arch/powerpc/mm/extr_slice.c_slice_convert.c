
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slice_mask {unsigned int low_slices; int high_slices; } ;
struct mm_struct {int context; } ;


 unsigned long GET_HIGH_SLICE_INDEX (int ) ;
 unsigned long SLICE_NUM_LOW ;
 int __clear_bit (unsigned long,int ) ;
 int __set_bit (unsigned long,int ) ;
 int copro_flush_all_slbs (struct mm_struct*) ;
 unsigned char* mm_ctx_high_slices (int *) ;
 unsigned char* mm_ctx_low_slices (int *) ;
 int mm_ctx_slb_addr_limit (int *) ;
 int slice_convert_lock ;
 int slice_dbg (char*,...) ;
 struct slice_mask* slice_mask_for_size (int *,int) ;
 int slice_print_mask (char*,struct slice_mask const*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_bit (unsigned long,int ) ;

__attribute__((used)) static void slice_convert(struct mm_struct *mm,
    const struct slice_mask *mask, int psize)
{
 int index, mask_index;

 unsigned char *hpsizes, *lpsizes;
 struct slice_mask *psize_mask, *old_mask;
 unsigned long i, flags;
 int old_psize;

 slice_dbg("slice_convert(mm=%p, psize=%d)\n", mm, psize);
 slice_print_mask(" mask", mask);

 psize_mask = slice_mask_for_size(&mm->context, psize);




 spin_lock_irqsave(&slice_convert_lock, flags);

 lpsizes = mm_ctx_low_slices(&mm->context);
 for (i = 0; i < SLICE_NUM_LOW; i++) {
  if (!(mask->low_slices & (1u << i)))
   continue;

  mask_index = i & 0x1;
  index = i >> 1;


  old_psize = (lpsizes[index] >> (mask_index * 4)) & 0xf;
  old_mask = slice_mask_for_size(&mm->context, old_psize);
  old_mask->low_slices &= ~(1u << i);
  psize_mask->low_slices |= 1u << i;


  lpsizes[index] = (lpsizes[index] & ~(0xf << (mask_index * 4))) |
    (((unsigned long)psize) << (mask_index * 4));
 }

 hpsizes = mm_ctx_high_slices(&mm->context);
 for (i = 0; i < GET_HIGH_SLICE_INDEX(mm_ctx_slb_addr_limit(&mm->context)); i++) {
  if (!test_bit(i, mask->high_slices))
   continue;

  mask_index = i & 0x1;
  index = i >> 1;


  old_psize = (hpsizes[index] >> (mask_index * 4)) & 0xf;
  old_mask = slice_mask_for_size(&mm->context, old_psize);
  __clear_bit(i, old_mask->high_slices);
  __set_bit(i, psize_mask->high_slices);


  hpsizes[index] = (hpsizes[index] & ~(0xf << (mask_index * 4))) |
    (((unsigned long)psize) << (mask_index * 4));
 }

 slice_dbg(" lsps=%lx, hsps=%lx\n",
    (unsigned long)mm_ctx_low_slices(&mm->context),
    (unsigned long)mm_ctx_high_slices(&mm->context));

 spin_unlock_irqrestore(&slice_convert_lock, flags);

 copro_flush_all_slbs(mm);
}
