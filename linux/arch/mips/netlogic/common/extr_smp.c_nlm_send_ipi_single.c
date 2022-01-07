
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int picbase; } ;


 int IRQ_IPI_SMP_FUNCTION ;
 int IRQ_IPI_SMP_RESCHEDULE ;
 unsigned int SMP_CALL_FUNCTION ;
 unsigned int SMP_RESCHEDULE_YOURSELF ;
 unsigned int cpu_logical_map (int) ;
 TYPE_1__* nlm_get_node (int ) ;
 int nlm_hwtid_to_node (unsigned int) ;
 int nlm_pic_send_ipi (int ,unsigned int,int ,int ) ;

void nlm_send_ipi_single(int logical_cpu, unsigned int action)
{
 unsigned int hwtid;
 uint64_t picbase;


 hwtid = cpu_logical_map(logical_cpu);
 picbase = nlm_get_node(nlm_hwtid_to_node(hwtid))->picbase;

 if (action & SMP_CALL_FUNCTION)
  nlm_pic_send_ipi(picbase, hwtid, IRQ_IPI_SMP_FUNCTION, 0);
 if (action & SMP_RESCHEDULE_YOURSELF)
  nlm_pic_send_ipi(picbase, hwtid, IRQ_IPI_SMP_RESCHEDULE, 0);
}
