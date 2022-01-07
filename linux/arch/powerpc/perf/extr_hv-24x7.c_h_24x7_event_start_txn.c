
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu {int dummy; } ;
struct hv_24x7_request_buffer {int dummy; } ;
struct hv_24x7_data_result_buffer {int dummy; } ;


 unsigned int PERF_PMU_TXN_READ ;
 int WARN_ON_ONCE (int ) ;
 int __this_cpu_read (int ) ;
 int __this_cpu_write (int ,unsigned int) ;
 scalar_t__ get_cpu_var (int ) ;
 int hv_24x7_reqb ;
 int hv_24x7_resb ;
 int hv_24x7_txn_flags ;
 int init_24x7_request (struct hv_24x7_request_buffer*,struct hv_24x7_data_result_buffer*) ;
 int put_cpu_var (int ) ;

__attribute__((used)) static void h_24x7_event_start_txn(struct pmu *pmu, unsigned int flags)
{
 struct hv_24x7_request_buffer *request_buffer;
 struct hv_24x7_data_result_buffer *result_buffer;


 WARN_ON_ONCE(__this_cpu_read(hv_24x7_txn_flags));

 __this_cpu_write(hv_24x7_txn_flags, flags);
 if (flags & ~PERF_PMU_TXN_READ)
  return;

 request_buffer = (void *)get_cpu_var(hv_24x7_reqb);
 result_buffer = (void *)get_cpu_var(hv_24x7_resb);

 init_24x7_request(request_buffer, result_buffer);

 put_cpu_var(hv_24x7_resb);
 put_cpu_var(hv_24x7_reqb);
}
