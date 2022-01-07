
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int dummy; } ;


 int x86_del_exclusive (int ) ;
 int x86_lbr_exclusive_bts ;
 int x86_release_hardware () ;

__attribute__((used)) static void bts_event_destroy(struct perf_event *event)
{
 x86_release_hardware();
 x86_del_exclusive(x86_lbr_exclusive_bts);
}
