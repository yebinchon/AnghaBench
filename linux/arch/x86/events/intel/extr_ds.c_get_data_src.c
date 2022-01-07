
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int flags; } ;
struct perf_event {TYPE_1__ hw; } ;


 int PERF_MEM_NA ;
 int PERF_X86_EVENT_PEBS_HSW_PREC ;
 int PERF_X86_EVENT_PEBS_LDLAT ;
 int PERF_X86_EVENT_PEBS_ST ;
 int load_latency_data (int ) ;
 int precise_datala_hsw (struct perf_event*,int ) ;
 int precise_store_data (int ) ;

__attribute__((used)) static u64 get_data_src(struct perf_event *event, u64 aux)
{
 u64 val = PERF_MEM_NA;
 int fl = event->hw.flags;
 bool fst = fl & (PERF_X86_EVENT_PEBS_ST | PERF_X86_EVENT_PEBS_HSW_PREC);

 if (fl & PERF_X86_EVENT_PEBS_LDLAT)
  val = load_latency_data(aux);
 else if (fst && (fl & PERF_X86_EVENT_PEBS_HSW_PREC))
  val = precise_datala_hsw(event, aux);
 else if (fst)
  val = precise_store_data(aux);
 return val;
}
