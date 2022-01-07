
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int irq_ack; int pending; } ;
struct kvm_pit {TYPE_1__ pit_state; } ;


 int atomic_set (int *,int) ;

__attribute__((used)) static inline void kvm_pit_reset_reinject(struct kvm_pit *pit)
{
 atomic_set(&pit->pit_state.pending, 0);
 atomic_set(&pit->pit_state.irq_ack, 1);
}
