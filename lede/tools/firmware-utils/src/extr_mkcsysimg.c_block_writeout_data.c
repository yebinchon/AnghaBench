
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csys_block {size_t size_avail; size_t file_size; int css; int padc; } ;
typedef int FILE ;


 int DBG (int,char*,size_t) ;
 int block_writeout_file (int *,struct csys_block*) ;
 int write_out_padding (int *,size_t,int ,int ) ;

int
block_writeout_data(FILE *outfile, struct csys_block *block)
{
 int res;
 size_t padlen;

 res = block_writeout_file(outfile, block);
 if (res)
  return res;


 padlen = block->size_avail - block->file_size;
 DBG(1,"padding block, length=%zu", padlen);
 res = write_out_padding(outfile, padlen, block->padc, block->css);

 return res;
}
