
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int avail_in; int avail_out; int total_out; void* next_out; int * next_in; int * zfree; int * zalloc; } ;
typedef TYPE_1__ z_stream ;
typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_8__ {int block_offset; int * uncompressed_block; int errcode; int compress_level; int * compressed_block; } ;
typedef TYPE_2__ BGZF ;


 int BGZF_BLOCK_SIZE ;
 int BGZF_ERR_ZLIB ;
 int BLOCK_FOOTER_LENGTH ;
 size_t BLOCK_HEADER_LENGTH ;
 int Z_DEFAULT_STRATEGY ;
 int Z_DEFLATED ;
 int Z_FINISH ;
 int Z_OK ;
 int Z_STREAM_END ;
 int assert (int) ;
 int crc32 (int,int *,int) ;
 int deflate (TYPE_1__*,int ) ;
 int deflateEnd (TYPE_1__*) ;
 int deflateInit2 (TYPE_1__*,int ,int ,int,int,int ) ;
 int * g_magic ;
 int memcpy (int *,int *,int) ;
 int packInt16 (int *,int) ;
 int packInt32 (int *,int) ;

__attribute__((used)) static int deflate_block(BGZF *fp, int block_length)
{
 uint8_t *buffer = fp->compressed_block;
 int buffer_size = BGZF_BLOCK_SIZE;
 int input_length = block_length;
 int compressed_length = 0;
 int remaining;
 uint32_t crc;

 assert(block_length <= BGZF_BLOCK_SIZE);
 memcpy(buffer, g_magic, BLOCK_HEADER_LENGTH);
 while (1) {
  int status;
  z_stream zs;
  zs.zalloc = ((void*)0);
  zs.zfree = ((void*)0);
  zs.next_in = fp->uncompressed_block;
  zs.avail_in = input_length;
  zs.next_out = (void*)&buffer[BLOCK_HEADER_LENGTH];
  zs.avail_out = buffer_size - BLOCK_HEADER_LENGTH - BLOCK_FOOTER_LENGTH;
  status = deflateInit2(&zs, fp->compress_level, Z_DEFLATED, -15, 8, Z_DEFAULT_STRATEGY);
  if (status != Z_OK) {
   fp->errcode |= BGZF_ERR_ZLIB;
   return -1;
  }
  status = deflate(&zs, Z_FINISH);
  if (status != Z_STREAM_END) {
   deflateEnd(&zs);
   if (status == Z_OK) {
    input_length -= 1024;
    assert(input_length > 0);
    continue;
   }
   fp->errcode |= BGZF_ERR_ZLIB;
   return -1;
  }
  if (deflateEnd(&zs) != Z_OK) {
   fp->errcode |= BGZF_ERR_ZLIB;
   return -1;
  }
  compressed_length = zs.total_out;
  compressed_length += BLOCK_HEADER_LENGTH + BLOCK_FOOTER_LENGTH;
  assert(compressed_length <= BGZF_BLOCK_SIZE);
  break;
 }

 assert(compressed_length > 0);
 packInt16((uint8_t*)&buffer[16], compressed_length - 1);
 crc = crc32(0L, ((void*)0), 0L);
 crc = crc32(crc, fp->uncompressed_block, input_length);
 packInt32((uint8_t*)&buffer[compressed_length-8], crc);
 packInt32((uint8_t*)&buffer[compressed_length-4], input_length);

 remaining = block_length - input_length;
 if (remaining > 0) {
  assert(remaining <= input_length);
  memcpy(fp->uncompressed_block, fp->uncompressed_block + input_length, remaining);
 }
 fp->block_offset = remaining;
 return compressed_length;
}
