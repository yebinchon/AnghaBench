
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_3__ {char open_mode; int block_address; int block_offset; scalar_t__ block_length; int errcode; int fp; } ;
typedef TYPE_1__ BGZF ;


 int BGZF_ERR_IO ;
 int BGZF_ERR_MISUSE ;
 int SEEK_SET ;
 scalar_t__ _bgzf_seek (int ,int,int) ;

int64_t bgzf_seek(BGZF* fp, int64_t pos, int where)
{
 int block_offset;
 int64_t block_address;

 if (fp->open_mode != 'r' || where != SEEK_SET) {
  fp->errcode |= BGZF_ERR_MISUSE;
  return -1;
 }
 block_offset = pos & 0xFFFF;
 block_address = pos >> 16;
 if (_bgzf_seek(fp->fp, block_address, SEEK_SET) < 0) {
  fp->errcode |= BGZF_ERR_IO;
  return -1;
 }
 fp->block_length = 0;
 fp->block_address = block_address;
 fp->block_offset = block_offset;
 return 0;
}
