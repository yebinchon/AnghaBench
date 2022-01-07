
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hv_24x7_request_buffer {int failing_request_ix; int detailed_rc; struct hv_24x7_request* requests; } ;
struct hv_24x7_request {int starting_lpar_ix; int starting_ix; int data_offset; int performance_domain; } ;
struct hv_24x7_data_result_buffer {int failing_request_ix; int detailed_rc; struct hv_24x7_request* requests; } ;


 int EIO ;
 int H24x7_DATA_BUFFER_SIZE ;
 int H_GET_24X7_DATA ;
 long plpar_hcall_norets (int ,int ,int ,int ,int ) ;
 int pr_notice_ratelimited (char*,int ,int ,int ,int ,long,long,int ,int ) ;
 int virt_to_phys (struct hv_24x7_request_buffer*) ;

__attribute__((used)) static int make_24x7_request(struct hv_24x7_request_buffer *request_buffer,
        struct hv_24x7_data_result_buffer *result_buffer)
{
 long ret;






 ret = plpar_hcall_norets(H_GET_24X7_DATA,
   virt_to_phys(request_buffer), H24x7_DATA_BUFFER_SIZE,
   virt_to_phys(result_buffer), H24x7_DATA_BUFFER_SIZE);

 if (ret) {
  struct hv_24x7_request *req;

  req = request_buffer->requests;
  pr_notice_ratelimited("hcall failed: [%d %#x %#x %d] => ret 0x%lx (%ld) detail=0x%x failing ix=%x\n",
          req->performance_domain, req->data_offset,
          req->starting_ix, req->starting_lpar_ix,
          ret, ret, result_buffer->detailed_rc,
          result_buffer->failing_request_ix);
  return -EIO;
 }

 return 0;
}
