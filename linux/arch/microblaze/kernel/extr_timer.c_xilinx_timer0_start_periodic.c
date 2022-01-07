
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ TCSR0 ;
 unsigned long TCSR_ARHT ;
 unsigned long TCSR_ENIT ;
 unsigned long TCSR_ENT ;
 unsigned long TCSR_LOAD ;
 unsigned long TCSR_TINT ;
 unsigned long TCSR_UDT ;
 scalar_t__ TLR0 ;
 scalar_t__ timer_baseaddr ;
 int write_fn (unsigned long,scalar_t__) ;

__attribute__((used)) static inline void xilinx_timer0_start_periodic(unsigned long load_val)
{
 if (!load_val)
  load_val = 1;

 write_fn(load_val, timer_baseaddr + TLR0);


 write_fn(TCSR_LOAD, timer_baseaddr + TCSR0);
 write_fn(TCSR_TINT|TCSR_ENIT|TCSR_ENT|TCSR_ARHT|TCSR_UDT,
   timer_baseaddr + TCSR0);
}
