
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int one_shot; int len; } ;
union cvmx_ciu_timx {scalar_t__ u64; TYPE_1__ s; } ;
typedef int u64 ;
struct TYPE_4__ {void* timer_start2; void* timer_start1; } ;


 int CVMX_CIU_TIMX (int) ;
 scalar_t__ cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,scalar_t__) ;
 TYPE_2__ li ;
 int raw_local_irq_restore (unsigned long) ;
 int raw_local_irq_save (unsigned long) ;
 void* read_c0_cvmcount () ;

__attribute__((used)) static void start_timer(int timer, u64 interval)
{
 union cvmx_ciu_timx timx;
 unsigned long flags;

 timx.u64 = 0;
 timx.s.one_shot = 1;
 timx.s.len = interval;
 raw_local_irq_save(flags);
 li.timer_start1 = read_c0_cvmcount();
 cvmx_write_csr(CVMX_CIU_TIMX(timer), timx.u64);

 timx.u64 = cvmx_read_csr(CVMX_CIU_TIMX(timer));
 li.timer_start2 = read_c0_cvmcount();
 raw_local_irq_restore(flags);
}
