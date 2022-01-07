
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transfer_request {int dummy; } ;


 int finish_request (struct transfer_request*) ;

__attribute__((used)) static void process_response(void *callback_data)
{
 struct transfer_request *request =
  (struct transfer_request *)callback_data;

 finish_request(request);
}
