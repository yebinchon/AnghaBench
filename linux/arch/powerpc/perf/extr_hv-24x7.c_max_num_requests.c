
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hv_24x7_request_buffer {int dummy; } ;


 int H24x7_DATA_BUFFER_SIZE ;
 int H24x7_REQUEST_SIZE (int) ;

__attribute__((used)) static unsigned int max_num_requests(int interface_version)
{
 return (H24x7_DATA_BUFFER_SIZE - sizeof(struct hv_24x7_request_buffer))
  / H24x7_REQUEST_SIZE(interface_version);
}
