
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu {int dummy; } ;


 int WARN_ON_ONCE (int) ;
 int __this_cpu_read (int ) ;
 int hv_24x7_txn_flags ;
 int reset_txn () ;

__attribute__((used)) static void h_24x7_event_cancel_txn(struct pmu *pmu)
{
 WARN_ON_ONCE(!__this_cpu_read(hv_24x7_txn_flags));
 reset_txn();
}
