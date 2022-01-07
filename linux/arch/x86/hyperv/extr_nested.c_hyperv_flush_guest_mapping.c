
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hv_guest_mapping_flush {int address_space; scalar_t__ flags; } ;


 int ENOTSUPP ;
 int HVCALL_FLUSH_GUEST_PHYSICAL_ADDRESS_SPACE ;
 int HV_HYPERCALL_RESULT_MASK ;
 int hv_do_hypercall (int ,struct hv_guest_mapping_flush*,int *) ;
 int hv_hypercall_pg ;
 int hyperv_pcpu_input_arg ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 scalar_t__ this_cpu_ptr (int ) ;
 int trace_hyperv_nested_flush_guest_mapping (int,int) ;
 scalar_t__ unlikely (int) ;

int hyperv_flush_guest_mapping(u64 as)
{
 struct hv_guest_mapping_flush **flush_pcpu;
 struct hv_guest_mapping_flush *flush;
 u64 status;
 unsigned long flags;
 int ret = -ENOTSUPP;

 if (!hv_hypercall_pg)
  goto fault;

 local_irq_save(flags);

 flush_pcpu = (struct hv_guest_mapping_flush **)
  this_cpu_ptr(hyperv_pcpu_input_arg);

 flush = *flush_pcpu;

 if (unlikely(!flush)) {
  local_irq_restore(flags);
  goto fault;
 }

 flush->address_space = as;
 flush->flags = 0;

 status = hv_do_hypercall(HVCALL_FLUSH_GUEST_PHYSICAL_ADDRESS_SPACE,
     flush, ((void*)0));
 local_irq_restore(flags);

 if (!(status & HV_HYPERCALL_RESULT_MASK))
  ret = 0;

fault:
 trace_hyperv_nested_flush_guest_mapping(as, ret);
 return ret;
}
