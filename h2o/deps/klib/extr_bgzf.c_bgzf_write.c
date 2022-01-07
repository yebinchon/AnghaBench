
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int ssize_t ;
struct TYPE_4__ {char open_mode; int block_offset; int * uncompressed_block; } ;
typedef TYPE_1__ BGZF ;


 int BGZF_BLOCK_SIZE ;
 int assert (int) ;
 scalar_t__ bgzf_flush (TYPE_1__*) ;
 int memcpy (int *,int const*,int) ;

ssize_t bgzf_write(BGZF *fp, const void *data, ssize_t length)
{
 const uint8_t *input = data;
 int block_length = BGZF_BLOCK_SIZE, bytes_written;
 assert(fp->open_mode == 'w');
 input = data;
 bytes_written = 0;
 while (bytes_written < length) {
  uint8_t* buffer = fp->uncompressed_block;
  int copy_length = block_length - fp->block_offset < length - bytes_written? block_length - fp->block_offset : length - bytes_written;
  memcpy(buffer + fp->block_offset, input, copy_length);
  fp->block_offset += copy_length;
  input += copy_length;
  bytes_written += copy_length;
  if (fp->block_offset == block_length && bgzf_flush(fp)) break;
 }
 return bytes_written;
}
