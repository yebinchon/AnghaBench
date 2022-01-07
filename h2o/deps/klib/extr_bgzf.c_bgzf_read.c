
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ ssize_t ;
typedef int _bgzf_file_t ;
struct TYPE_4__ {char open_mode; int block_length; int block_offset; scalar_t__ fp; int block_address; int * uncompressed_block; } ;
typedef TYPE_1__ BGZF ;


 int _bgzf_tell (int ) ;
 int assert (int) ;
 scalar_t__ bgzf_read_block (TYPE_1__*) ;
 int memcpy (int *,int *,int) ;

ssize_t bgzf_read(BGZF *fp, void *data, ssize_t length)
{
 ssize_t bytes_read = 0;
 uint8_t *output = data;
 if (length <= 0) return 0;
 assert(fp->open_mode == 'r');
 while (bytes_read < length) {
  int copy_length, available = fp->block_length - fp->block_offset;
  uint8_t *buffer;
  if (available <= 0) {
   if (bgzf_read_block(fp) != 0) return -1;
   available = fp->block_length - fp->block_offset;
   if (available <= 0) break;
  }
  copy_length = length - bytes_read < available? length - bytes_read : available;
  buffer = fp->uncompressed_block;
  memcpy(output, buffer + fp->block_offset, copy_length);
  fp->block_offset += copy_length;
  output += copy_length;
  bytes_read += copy_length;
 }
 if (fp->block_offset == fp->block_length) {
  fp->block_address = _bgzf_tell((_bgzf_file_t)fp->fp);
  fp->block_offset = fp->block_length = 0;
 }
 return bytes_read;
}
