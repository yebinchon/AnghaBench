
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct intel_uncore_box {TYPE_3__* pmu; int flags; } ;
struct TYPE_6__ {TYPE_2__* type; } ;
struct TYPE_5__ {TYPE_1__* ops; } ;
struct TYPE_4__ {int (* init_box ) (struct intel_uncore_box*) ;} ;


 int UNCORE_BOX_FLAG_INITIATED ;
 int stub1 (struct intel_uncore_box*) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static inline void uncore_box_init(struct intel_uncore_box *box)
{
 if (!test_and_set_bit(UNCORE_BOX_FLAG_INITIATED, &box->flags)) {
  if (box->pmu->type->ops->init_box)
   box->pmu->type->ops->init_box(box);
 }
}
