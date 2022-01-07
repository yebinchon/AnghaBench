
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct seq_file {struct kvm_vcpu* private; } ;
struct TYPE_2__ {int * timing_count_type; int * timing_sum_quad_duration; int * timing_sum_duration; int * timing_max_duration; int * timing_min_duration; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int __NUMBER_OF_KVM_EXIT_TYPES ;
 int do_div (int ,int ) ;
 int * kvm_exit_names ;
 int seq_printf (struct seq_file*,char*,int ,int ,int ,int ,int ,int ) ;
 int seq_puts (struct seq_file*,char*) ;
 int tb_ticks_per_usec ;

__attribute__((used)) static int kvmppc_exit_timing_show(struct seq_file *m, void *private)
{
 struct kvm_vcpu *vcpu = m->private;
 int i;
 u64 min, max, sum, sum_quad;

 seq_puts(m, "type	count	min	max	sum	sum_squared\n");

 for (i = 0; i < __NUMBER_OF_KVM_EXIT_TYPES; i++) {

  min = vcpu->arch.timing_min_duration[i];
  do_div(min, tb_ticks_per_usec);
  max = vcpu->arch.timing_max_duration[i];
  do_div(max, tb_ticks_per_usec);
  sum = vcpu->arch.timing_sum_duration[i];
  do_div(sum, tb_ticks_per_usec);
  sum_quad = vcpu->arch.timing_sum_quad_duration[i];
  do_div(sum_quad, tb_ticks_per_usec);

  seq_printf(m, "%12s	%10d	%10lld	%10lld	%20lld	%20lld\n",
   kvm_exit_names[i],
   vcpu->arch.timing_count_type[i],
   min,
   max,
   sum,
   sum_quad);

 }
 return 0;
}
