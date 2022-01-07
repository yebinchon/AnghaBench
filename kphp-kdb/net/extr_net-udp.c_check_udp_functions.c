
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ magic; char* title; void* process_send_error; void* process_error_msg; void* process_msg; } ;
typedef TYPE_1__ udp_type_t ;


 scalar_t__ UDP_FUNC_MAGIC ;
 void* process_msg_noop ;

int check_udp_functions (udp_type_t *type) {
  if (type->magic != UDP_FUNC_MAGIC) {
    return -1;
  }
  if (!type->title) {
    type->title = "(unknown)";
  }
  if (!type->process_msg) {
    type->process_msg = process_msg_noop;
  }
  if (!type->process_error_msg) {
    type->process_error_msg = process_msg_noop;
  }
  if (!type->process_send_error) {
    type->process_send_error= process_msg_noop;
  }





  return 0;
}
