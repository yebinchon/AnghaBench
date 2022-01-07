
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __decompress (scalar_t__,scalar_t__,int *,int *,void*,int ,int *,int ) ;
 scalar_t__ _compressed_end ;
 scalar_t__ _compressed_start ;
 scalar_t__ decompress_offset ;
 int error ;

void *decompress_kernel(void)
{
 void *output = (void *)decompress_offset;

 __decompress(_compressed_start, _compressed_end - _compressed_start,
       ((void*)0), ((void*)0), output, 0, ((void*)0), error);
 return output;
}
