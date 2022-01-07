
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long decompressed_bytes ;
 unsigned long limit ;
 int memcpy (char*,char*,unsigned long) ;
 unsigned long min (unsigned long,unsigned long) ;
 char* output_buffer ;
 unsigned long skip ;

__attribute__((used)) static long flush(void *v, unsigned long buffer_size)
{
 unsigned long end = decompressed_bytes + buffer_size;
 unsigned long size = buffer_size;
 unsigned long offset = 0;
 char *in = v;
 char *out;





 if (decompressed_bytes >= limit)
  return -1;


 if (end <= skip) {
  decompressed_bytes += buffer_size;
  return buffer_size;
 }


 if (decompressed_bytes < skip && end > skip) {
  offset = skip - decompressed_bytes;

  in += offset;
  size -= offset;
  decompressed_bytes += offset;
 }

 out = &output_buffer[decompressed_bytes - skip];
 size = min(decompressed_bytes + size, limit) - decompressed_bytes;

 memcpy(out, in, size);
 decompressed_bytes += size;

 return buffer_size;
}
