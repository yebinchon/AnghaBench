
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct perf_event {int dummy; } ;
struct hv_24x7_request_buffer {scalar_t__ num_requests; int interface_version; scalar_t__ requests; } ;
struct hv_24x7_request {int performance_domain; int max_num_thread_groups; int starting_thread_group_ix; void* max_ix; void* starting_ix; void* max_num_lpars; void* starting_lpar_ix; int data_offset; void* data_size; } ;


 int EINVAL ;
 size_t H24x7_REQUEST_SIZE (int) ;


 void* cpu_to_be16 (int) ;
 int cpu_to_be32 (int ) ;
 scalar_t__ domain_needs_aggregation (int) ;
 int event_get_chip (struct perf_event*) ;
 int event_get_core (struct perf_event*) ;
 int event_get_domain (struct perf_event*) ;
 int event_get_lpar (struct perf_event*) ;
 int event_get_offset (struct perf_event*) ;
 int event_get_vcpu (struct perf_event*) ;
 scalar_t__ max_num_requests (int) ;
 int pr_devel (char*,scalar_t__) ;

__attribute__((used)) static int add_event_to_24x7_request(struct perf_event *event,
    struct hv_24x7_request_buffer *request_buffer)
{
 u16 idx;
 int i;
 size_t req_size;
 struct hv_24x7_request *req;

 if (request_buffer->num_requests >=
     max_num_requests(request_buffer->interface_version)) {
  pr_devel("Too many requests for 24x7 HCALL %d\n",
    request_buffer->num_requests);
  return -EINVAL;
 }

 switch (event_get_domain(event)) {
 case 129:
  idx = event_get_chip(event);
  break;
 case 128:
  idx = event_get_core(event);
  break;
 default:
  idx = event_get_vcpu(event);
 }

 req_size = H24x7_REQUEST_SIZE(request_buffer->interface_version);

 i = request_buffer->num_requests++;
 req = (void *) request_buffer->requests + i * req_size;

 req->performance_domain = event_get_domain(event);
 req->data_size = cpu_to_be16(8);
 req->data_offset = cpu_to_be32(event_get_offset(event));
 req->starting_lpar_ix = cpu_to_be16(event_get_lpar(event));
 req->max_num_lpars = cpu_to_be16(1);
 req->starting_ix = cpu_to_be16(idx);
 req->max_ix = cpu_to_be16(1);

 if (request_buffer->interface_version > 1) {
  if (domain_needs_aggregation(req->performance_domain))
   req->max_num_thread_groups = -1;
  else if (req->performance_domain != 129) {
   req->starting_thread_group_ix = idx % 2;
   req->max_num_thread_groups = 1;
  }
 }

 return 0;
}
