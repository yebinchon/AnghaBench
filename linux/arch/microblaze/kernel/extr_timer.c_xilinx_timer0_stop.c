
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ TCSR0 ;
 int TCSR_ENT ;
 int read_fn (scalar_t__) ;
 scalar_t__ timer_baseaddr ;
 int write_fn (int,scalar_t__) ;

__attribute__((used)) static inline void xilinx_timer0_stop(void)
{
 write_fn(read_fn(timer_baseaddr + TCSR0) & ~TCSR_ENT,
   timer_baseaddr + TCSR0);
}
