
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct fw_block {int dummy; } ;
struct TYPE_4__ {scalar_t__ romio_offs; } ;
struct TYPE_3__ {scalar_t__ file_size; } ;


 int BLOCK_TYPE_RAW ;
 int block_stat_file (struct fw_block*) ;
 struct fw_block* blocks ;
 TYPE_2__* board ;
 TYPE_1__* bootext_block ;
 int calc_block_offsets (int ,scalar_t__*) ;
 int num_blocks ;

int
process_blocks(void)
{
 struct fw_block *block;
 uint32_t offset;
 int i;
 int res;


 for (i = 0; i < num_blocks; i++) {
  block = &blocks[i];
  res = block_stat_file(block);
  if (res)
   return res;
 }

 offset = board->romio_offs + bootext_block->file_size;
 res = calc_block_offsets(BLOCK_TYPE_RAW, &offset);

 return res;
}
