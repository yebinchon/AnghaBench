
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int num_boxes; } ;
struct TYPE_3__ {int * ops; } ;


 int icl_get_cbox_num () ;
 int icl_msr_uncores ;
 TYPE_2__ icl_uncore_cbox ;
 int skl_uncore_msr_ops ;
 TYPE_1__ snb_uncore_arb ;
 int uncore_msr_uncores ;

void icl_uncore_cpu_init(void)
{
 uncore_msr_uncores = icl_msr_uncores;
 icl_uncore_cbox.num_boxes = icl_get_cbox_num();
 snb_uncore_arb.ops = &skl_uncore_msr_ops;
}
