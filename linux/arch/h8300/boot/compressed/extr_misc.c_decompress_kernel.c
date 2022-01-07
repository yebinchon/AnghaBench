
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ HEAP_SIZE ;
 int __decompress (int ,int ,int *,int *,int ,int ,int *,int ) ;
 int _end ;
 int error ;
 scalar_t__ free_mem_end_ptr ;
 unsigned long free_mem_ptr ;
 int input_data ;
 int input_len ;
 int output ;

void decompress_kernel(void)
{
 free_mem_ptr = (unsigned long)&_end;
 free_mem_end_ptr = free_mem_ptr + HEAP_SIZE;

 __decompress(input_data, input_len, ((void*)0), ((void*)0), output, 0, ((void*)0), error);
}
