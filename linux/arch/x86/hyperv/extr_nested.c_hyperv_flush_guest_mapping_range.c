
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hv_guest_mapping_flush_list {int address_space; scalar_t__ flags; } ;
typedef int (* hyperv_fill_flush_list_func ) (struct hv_guest_mapping_flush_list*,void*) ;


 int ENOTSUPP ;
 int HVCALL_FLUSH_GUEST_PHYSICAL_ADDRESS_LIST ;
 int HV_HYPERCALL_RESULT_MASK ;
 int hv_do_rep_hypercall (int ,int,int ,struct hv_guest_mapping_flush_list*,int *) ;
 int hv_hypercall_pg ;
 int hyperv_pcpu_input_arg ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 scalar_t__ this_cpu_ptr (int ) ;
 int trace_hyperv_nested_flush_guest_mapping_range (int,int) ;
 scalar_t__ unlikely (int) ;

int hyperv_flush_guest_mapping_range(u64 as,
  hyperv_fill_flush_list_func fill_flush_list_func, void *data)
{
 struct hv_guest_mapping_flush_list **flush_pcpu;
 struct hv_guest_mapping_flush_list *flush;
 u64 status = 0;
 unsigned long flags;
 int ret = -ENOTSUPP;
 int gpa_n = 0;

 if (!hv_hypercall_pg || !fill_flush_list_func)
  goto fault;

 local_irq_save(flags);

 flush_pcpu = (struct hv_guest_mapping_flush_list **)
  this_cpu_ptr(hyperv_pcpu_input_arg);

 flush = *flush_pcpu;
 if (unlikely(!flush)) {
  local_irq_restore(flags);
  goto fault;
 }

 flush->address_space = as;
 flush->flags = 0;

 gpa_n = fill_flush_list_func(flush, data);
 if (gpa_n < 0) {
  local_irq_restore(flags);
  goto fault;
 }

 status = hv_do_rep_hypercall(HVCALL_FLUSH_GUEST_PHYSICAL_ADDRESS_LIST,
         gpa_n, 0, flush, ((void*)0));

 local_irq_restore(flags);

 if (!(status & HV_HYPERCALL_RESULT_MASK))
  ret = 0;
 else
  ret = status;
fault:
 trace_hyperv_nested_flush_guest_mapping_range(as, ret);
 return ret;
}
