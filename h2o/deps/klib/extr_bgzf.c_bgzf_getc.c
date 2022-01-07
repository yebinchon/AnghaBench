
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int _bgzf_file_t ;
struct TYPE_4__ {scalar_t__ block_offset; scalar_t__ block_length; scalar_t__ fp; int block_address; scalar_t__ uncompressed_block; } ;
typedef TYPE_1__ BGZF ;


 int _bgzf_tell (int ) ;
 scalar_t__ bgzf_read_block (TYPE_1__*) ;

int bgzf_getc(BGZF *fp)
{
 int c;
 if (fp->block_offset >= fp->block_length) {
  if (bgzf_read_block(fp) != 0) return -2;
  if (fp->block_length == 0) return -1;
 }
 c = ((unsigned char*)fp->uncompressed_block)[fp->block_offset++];
    if (fp->block_offset == fp->block_length) {
        fp->block_address = _bgzf_tell((_bgzf_file_t)fp->fp);
        fp->block_offset = 0;
        fp->block_length = 0;
    }
 return c;
}
