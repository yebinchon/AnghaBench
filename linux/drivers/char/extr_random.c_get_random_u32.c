
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct batched_entropy {int position; int batch_lock; int * entropy_u32; } ;


 int ARRAY_SIZE (int *) ;
 scalar_t__ arch_get_random_int (int *) ;
 int batched_entropy_u32 ;
 int extract_crng (int *) ;
 struct batched_entropy* raw_cpu_ptr (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int warn_unseeded_randomness (void**) ;

u32 get_random_u32(void)
{
 u32 ret;
 unsigned long flags;
 struct batched_entropy *batch;
 static void *previous;

 if (arch_get_random_int(&ret))
  return ret;

 warn_unseeded_randomness(&previous);

 batch = raw_cpu_ptr(&batched_entropy_u32);
 spin_lock_irqsave(&batch->batch_lock, flags);
 if (batch->position % ARRAY_SIZE(batch->entropy_u32) == 0) {
  extract_crng((u8 *)batch->entropy_u32);
  batch->position = 0;
 }
 ret = batch->entropy_u32[batch->position++];
 spin_unlock_irqrestore(&batch->batch_lock, flags);
 return ret;
}
