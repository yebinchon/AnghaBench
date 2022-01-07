
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 scalar_t__ TCR1 ;
 int read_fn (scalar_t__) ;
 scalar_t__ timer_baseaddr ;

__attribute__((used)) static u64 xilinx_clock_read(void)
{
 return read_fn(timer_baseaddr + TCR1);
}
