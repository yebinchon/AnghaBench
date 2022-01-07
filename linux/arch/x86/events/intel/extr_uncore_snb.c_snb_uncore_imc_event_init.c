
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_8__ {void* idx; } ;
struct TYPE_7__ {void* idx; } ;
struct hw_perf_event {int idx; unsigned long long last_tag; int event_base; int config; TYPE_4__ branch_reg; TYPE_3__ extra_reg; scalar_t__ sample_period; } ;
struct TYPE_6__ {int config; scalar_t__ type; scalar_t__ sample_period; } ;
struct perf_event {scalar_t__ cpu; struct hw_perf_event hw; int event_caps; struct intel_uncore_box* pmu_private; TYPE_2__ attr; TYPE_1__* pmu; } ;
struct intel_uncore_pmu {scalar_t__ func_id; } ;
struct intel_uncore_box {scalar_t__ cpu; } ;
struct TYPE_5__ {scalar_t__ type; } ;


 int EINVAL ;
 int ENOENT ;
 void* EXTRA_REG_NONE ;
 int PERF_EV_CAP_READ_ACTIVE_PKG ;

 int SNB_UNCORE_PCI_IMC_DATA_READS_BASE ;

 int SNB_UNCORE_PCI_IMC_DATA_WRITES_BASE ;
 int SNB_UNCORE_PCI_IMC_EVENT_MASK ;
 int UNCORE_PMC_IDX_FREERUNNING ;
 struct intel_uncore_pmu* uncore_event_to_pmu (struct perf_event*) ;
 struct intel_uncore_box* uncore_pmu_to_box (struct intel_uncore_pmu*,scalar_t__) ;

__attribute__((used)) static int snb_uncore_imc_event_init(struct perf_event *event)
{
 struct intel_uncore_pmu *pmu;
 struct intel_uncore_box *box;
 struct hw_perf_event *hwc = &event->hw;
 u64 cfg = event->attr.config & SNB_UNCORE_PCI_IMC_EVENT_MASK;
 int idx, base;

 if (event->attr.type != event->pmu->type)
  return -ENOENT;

 pmu = uncore_event_to_pmu(event);

 if (pmu->func_id < 0)
  return -ENOENT;


 if (hwc->sample_period)
  return -EINVAL;


 if (event->attr.sample_period)
  return -EINVAL;





 if (event->cpu < 0)
  return -EINVAL;


 if (event->attr.config & ~SNB_UNCORE_PCI_IMC_EVENT_MASK)
  return -EINVAL;

 box = uncore_pmu_to_box(pmu, event->cpu);
 if (!box || box->cpu < 0)
  return -EINVAL;

 event->cpu = box->cpu;
 event->pmu_private = box;

 event->event_caps |= PERF_EV_CAP_READ_ACTIVE_PKG;

 event->hw.idx = -1;
 event->hw.last_tag = ~0ULL;
 event->hw.extra_reg.idx = EXTRA_REG_NONE;
 event->hw.branch_reg.idx = EXTRA_REG_NONE;



 switch (cfg) {
 case 129:
  base = SNB_UNCORE_PCI_IMC_DATA_READS_BASE;
  idx = UNCORE_PMC_IDX_FREERUNNING;
  break;
 case 128:
  base = SNB_UNCORE_PCI_IMC_DATA_WRITES_BASE;
  idx = UNCORE_PMC_IDX_FREERUNNING;
  break;
 default:
  return -EINVAL;
 }


 event->hw.event_base = base;
 event->hw.idx = idx;


 event->hw.config = ((cfg - 1) << 8) | 0x10ff;



 return 0;
}
