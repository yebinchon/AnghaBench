
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct parsed_partitions {int bdev; } ;
typedef int gpt_header ;


 int GFP_KERNEL ;
 unsigned int bdev_logical_block_size (int ) ;
 int kfree (int *) ;
 int * kmalloc (unsigned int,int ) ;
 unsigned int read_lba (struct parsed_partitions*,int ,int *,unsigned int) ;

__attribute__((used)) static gpt_header *alloc_read_gpt_header(struct parsed_partitions *state,
      u64 lba)
{
 gpt_header *gpt;
 unsigned ssz = bdev_logical_block_size(state->bdev);

 gpt = kmalloc(ssz, GFP_KERNEL);
 if (!gpt)
  return ((void*)0);

 if (read_lba(state, lba, (u8 *) gpt, ssz) < ssz) {
  kfree(gpt);
                gpt=((void*)0);
  return ((void*)0);
 }

 return gpt;
}
