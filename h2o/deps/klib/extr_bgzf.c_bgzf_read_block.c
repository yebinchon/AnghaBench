
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int64_t ;
typedef int header ;
typedef int _bgzf_file_t ;
struct TYPE_6__ {int block_length; int block_address; scalar_t__ block_offset; int errcode; scalar_t__ fp; scalar_t__ compressed_block; } ;
typedef TYPE_1__ BGZF ;


 int BGZF_ERR_HEADER ;
 int BGZF_ERR_IO ;
 int BLOCK_HEADER_LENGTH ;
 int _bgzf_read (scalar_t__,int *,int) ;
 int _bgzf_tell (int ) ;
 int cache_block (TYPE_1__*,int) ;
 int check_header (int *) ;
 int inflate_block (TYPE_1__*,int) ;
 scalar_t__ load_block_from_cache (TYPE_1__*,int ) ;
 int memcpy (int *,int *,int) ;
 int unpackInt16 (int *) ;

int bgzf_read_block(BGZF *fp)
{
 uint8_t header[BLOCK_HEADER_LENGTH], *compressed_block;
 int count, size = 0, block_length, remaining;
 int64_t block_address;
 block_address = _bgzf_tell((_bgzf_file_t)fp->fp);
 if (load_block_from_cache(fp, block_address)) return 0;
 count = _bgzf_read(fp->fp, header, sizeof(header));
 if (count == 0) {
  fp->block_length = 0;
  return 0;
 }
 if (count != sizeof(header) || !check_header(header)) {
  fp->errcode |= BGZF_ERR_HEADER;
  return -1;
 }
 size = count;
 block_length = unpackInt16((uint8_t*)&header[16]) + 1;
 compressed_block = (uint8_t*)fp->compressed_block;
 memcpy(compressed_block, header, BLOCK_HEADER_LENGTH);
 remaining = block_length - BLOCK_HEADER_LENGTH;
 count = _bgzf_read(fp->fp, &compressed_block[BLOCK_HEADER_LENGTH], remaining);
 if (count != remaining) {
  fp->errcode |= BGZF_ERR_IO;
  return -1;
 }
 size += count;
 if ((count = inflate_block(fp, block_length)) < 0) return -1;
 if (fp->block_length != 0) fp->block_offset = 0;
 fp->block_address = block_address;
 fp->block_length = count;
 cache_block(fp, size);
 return 0;
}
