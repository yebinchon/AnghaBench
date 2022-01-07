
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct perf_event {int dummy; } ;
struct hv_24x7_request_buffer {int dummy; } ;
struct hv_24x7_data_result_buffer {int results; } ;


 int BUILD_BUG_ON (int) ;
 int add_event_to_24x7_request (struct perf_event*,struct hv_24x7_request_buffer*) ;
 int get_count_from_result (struct perf_event*,struct hv_24x7_data_result_buffer*,int ,int *,int *) ;
 scalar_t__ get_cpu_var (int ) ;
 int hv_24x7_reqb ;
 int hv_24x7_resb ;
 int init_24x7_request (struct hv_24x7_request_buffer*,struct hv_24x7_data_result_buffer*) ;
 int make_24x7_request (struct hv_24x7_request_buffer*,struct hv_24x7_data_result_buffer*) ;
 int put_cpu_var (int ) ;

__attribute__((used)) static int single_24x7_request(struct perf_event *event, u64 *count)
{
 int ret;
 struct hv_24x7_request_buffer *request_buffer;
 struct hv_24x7_data_result_buffer *result_buffer;

 BUILD_BUG_ON(sizeof(*request_buffer) > 4096);
 BUILD_BUG_ON(sizeof(*result_buffer) > 4096);

 request_buffer = (void *)get_cpu_var(hv_24x7_reqb);
 result_buffer = (void *)get_cpu_var(hv_24x7_resb);

 init_24x7_request(request_buffer, result_buffer);

 ret = add_event_to_24x7_request(event, request_buffer);
 if (ret)
  goto out;

 ret = make_24x7_request(request_buffer, result_buffer);
 if (ret)
  goto out;


 ret = get_count_from_result(event, result_buffer,
        result_buffer->results, count, ((void*)0));

out:
 put_cpu_var(hv_24x7_reqb);
 put_cpu_var(hv_24x7_resb);
 return ret;
}
