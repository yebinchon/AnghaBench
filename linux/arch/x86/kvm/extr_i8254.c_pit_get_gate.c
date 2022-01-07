
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* channels; } ;
struct kvm_pit {TYPE_2__ pit_state; } ;
struct TYPE_3__ {int gate; } ;



__attribute__((used)) static int pit_get_gate(struct kvm_pit *pit, int channel)
{
 return pit->pit_state.channels[channel].gate;
}
