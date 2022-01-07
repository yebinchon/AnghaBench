
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int periodic; int sintx; } ;
struct TYPE_3__ {int payload; } ;
struct hv_message {TYPE_1__ u; } ;
struct kvm_vcpu_hv_stimer {TYPE_2__ config; int exp_time; struct hv_message msg; } ;
struct kvm_vcpu {int kvm; } ;
struct hv_timer_message_payload {int delivery_time; int expiration_time; } ;


 int get_time_ref_counter (int ) ;
 struct kvm_vcpu* stimer_to_vcpu (struct kvm_vcpu_hv_stimer*) ;
 int synic_deliver_msg (int ,int ,struct hv_message*,int) ;
 int vcpu_to_synic (struct kvm_vcpu*) ;

__attribute__((used)) static int stimer_send_msg(struct kvm_vcpu_hv_stimer *stimer)
{
 struct kvm_vcpu *vcpu = stimer_to_vcpu(stimer);
 struct hv_message *msg = &stimer->msg;
 struct hv_timer_message_payload *payload =
   (struct hv_timer_message_payload *)&msg->u.payload;





 bool no_retry = stimer->config.periodic;

 payload->expiration_time = stimer->exp_time;
 payload->delivery_time = get_time_ref_counter(vcpu->kvm);
 return synic_deliver_msg(vcpu_to_synic(vcpu),
     stimer->config.sintx, msg,
     no_retry);
}
