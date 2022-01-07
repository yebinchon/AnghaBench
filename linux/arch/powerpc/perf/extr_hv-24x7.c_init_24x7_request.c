
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hv_24x7_request_buffer {int interface_version; } ;
struct hv_24x7_data_result_buffer {int interface_version; } ;


 int H24x7_DATA_BUFFER_SIZE ;
 int interface_version ;
 int memset (struct hv_24x7_request_buffer*,int ,int ) ;

__attribute__((used)) static void init_24x7_request(struct hv_24x7_request_buffer *request_buffer,
         struct hv_24x7_data_result_buffer *result_buffer)
{

 memset(request_buffer, 0, H24x7_DATA_BUFFER_SIZE);
 memset(result_buffer, 0, H24x7_DATA_BUFFER_SIZE);

 request_buffer->interface_version = interface_version;

}
