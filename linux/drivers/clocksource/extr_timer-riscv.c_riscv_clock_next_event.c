
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int SIE_STIE ;
 int csr_set (int ,int ) ;
 scalar_t__ get_cycles64 () ;
 int sbi_set_timer (scalar_t__) ;
 int sie ;

__attribute__((used)) static int riscv_clock_next_event(unsigned long delta,
  struct clock_event_device *ce)
{
 csr_set(sie, SIE_STIE);
 sbi_set_timer(get_cycles64() + delta);
 return 0;
}
