
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char open_mode; scalar_t__ block_offset; int block_address; int errcode; int fp; int compressed_block; } ;
typedef TYPE_1__ BGZF ;


 int BGZF_ERR_IO ;
 int assert (int) ;
 int deflate_block (TYPE_1__*,scalar_t__) ;
 int fwrite (int ,int,int,int ) ;

int bgzf_flush(BGZF *fp)
{
 assert(fp->open_mode == 'w');
 while (fp->block_offset > 0) {
  int block_length;
  block_length = deflate_block(fp, fp->block_offset);
  if (block_length < 0) return -1;
  if (fwrite(fp->compressed_block, 1, block_length, fp->fp) != block_length) {
   fp->errcode |= BGZF_ERR_IO;
   return -1;
  }
  fp->block_address += block_length;
 }
 return 0;
}
