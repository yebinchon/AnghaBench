
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_uncore_box {TYPE_2__* pmu; int flags; } ;
struct TYPE_4__ {TYPE_1__* type; } ;
struct TYPE_3__ {int event_ctl; } ;


 int UNCORE_BOX_FLAG_CTL_OFFS8 ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static inline
unsigned uncore_pci_event_ctl(struct intel_uncore_box *box, int idx)
{
 if (test_bit(UNCORE_BOX_FLAG_CTL_OFFS8, &box->flags))
  return idx * 8 + box->pmu->type->event_ctl;

 return idx * 4 + box->pmu->type->event_ctl;
}
