
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct mylo_partition_table {int dummy; } ;
struct mylo_partition_header {int dummy; } ;
struct mylo_fw_blockdesc {void* blen; void* dlen; void* addr; void* type; } ;
struct fw_block {int size; int flags; int addr; int blocklen; } ;
typedef int desc ;
struct TYPE_2__ {int part_offset; int part_size; } ;
typedef int FILE ;


 int ALIGN (int,int) ;
 int BLOCK_FLAG_HAVEHDR ;
 int FW_DESC_TYPE_USED ;
 void* HOST_TO_LE32 (int) ;
 int MYLO_MAX_PARTITIONS ;
 int PART_NAME_LEN ;
 TYPE_1__* board ;
 struct fw_block* fw_blocks ;
 int fw_num_blocks ;
 scalar_t__ fw_num_partitions ;
 int memset (struct mylo_fw_blockdesc*,int ,int) ;
 scalar_t__ write_out_desc (int *,struct mylo_fw_blockdesc*,int*) ;
 scalar_t__ write_out_file (int *,struct fw_block*,int*) ;
 scalar_t__ write_out_partitions (int *,int*) ;

int
write_out_blocks(FILE *outfile, uint32_t *crc)
{
 struct mylo_fw_blockdesc desc;
 struct fw_block *b;
 uint32_t dlen;
 int i;





 if (fw_num_partitions > 0) {
  desc.type = HOST_TO_LE32(FW_DESC_TYPE_USED);
  desc.addr = HOST_TO_LE32(board->part_offset);
  desc.dlen = HOST_TO_LE32(sizeof(struct mylo_partition_table) +
     (MYLO_MAX_PARTITIONS * PART_NAME_LEN));
  desc.blen = HOST_TO_LE32(board->part_size);

  if (write_out_desc(outfile, &desc, crc) != 0)
          return -1;
 }




 for (i = 0; i < fw_num_blocks; i++) {
  b = &fw_blocks[i];


  dlen = b->size;
  if ((b->flags & BLOCK_FLAG_HAVEHDR) != 0) {
   dlen += sizeof(struct mylo_partition_header);
  }


  dlen = ALIGN(dlen, 4);


  desc.type = HOST_TO_LE32(FW_DESC_TYPE_USED);
  desc.addr = HOST_TO_LE32(b->addr);
  desc.dlen = HOST_TO_LE32(dlen);
  desc.blen = HOST_TO_LE32(b->blocklen);

  if (write_out_desc(outfile, &desc, crc) != 0)
   return -1;
 }




 memset(&desc, 0, sizeof(desc));
 if (write_out_desc(outfile, &desc, crc) != 0)
  return -1;

 if (write_out_partitions(outfile, crc) != 0)
  return -1;




 for (i = 0; i < fw_num_blocks; i++) {
  b = &fw_blocks[i];
  if (write_out_file(outfile, b, crc) != 0)
          return -1;
 }

 return 0;
}
