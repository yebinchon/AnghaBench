
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* filter_bit ;
 int prepare_filter_bits () ;

unsigned diff_filter_bit(char status)
{
 prepare_filter_bits();
 return filter_bit[(int) status];
}
