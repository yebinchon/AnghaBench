
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ len; scalar_t__ one_shot; } ;
union cvmx_ciu_timx {int u64; TYPE_1__ s; } ;


 int CVMX_CIU_TIMX (int) ;
 int cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,int ) ;

__attribute__((used)) static void disable_timer(int timer)
{
 union cvmx_ciu_timx timx;

 timx.s.one_shot = 0;
 timx.s.len = 0;
 cvmx_write_csr(CVMX_CIU_TIMX(timer), timx.u64);

 timx.u64 = cvmx_read_csr(CVMX_CIU_TIMX(timer));
}
