
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __decompress (void*,unsigned long,int *,int ,void*,unsigned long,int *,int ) ;
 long decompressed_bytes ;
 int flush ;
 long limit ;
 void* output_buffer ;
 int print_err ;
 long skip ;

long partial_decompress(void *inbuf, unsigned long input_size,
 void *outbuf, unsigned long output_size, unsigned long _skip)
{
 int ret;





 output_size += _skip;

 decompressed_bytes = 0;
 output_buffer = outbuf;
 limit = output_size;
 skip = _skip;

 ret = __decompress(inbuf, input_size, ((void*)0), flush, outbuf,
  output_size, ((void*)0), print_err);





 if (decompressed_bytes < limit)
  return ret;

 return decompressed_bytes - skip;
}
