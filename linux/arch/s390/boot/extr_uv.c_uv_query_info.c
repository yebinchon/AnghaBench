
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uvcb ;
typedef int uint64_t ;
struct TYPE_2__ {int len; int cmd; } ;
struct uv_cb_qui {scalar_t__ inst_calls_list; TYPE_1__ header; } ;


 int BIT_UVC_CMD_REMOVE_SHARED_ACCESS ;
 int BIT_UVC_CMD_SET_SHARED_ACCESS ;
 int UVC_CMD_QUI ;
 int prot_virt_guest ;
 scalar_t__ test_bit_inv (int ,unsigned long*) ;
 int test_facility (int) ;
 scalar_t__ uv_call (int ,int ) ;

void uv_query_info(void)
{
 struct uv_cb_qui uvcb = {
  .header.cmd = UVC_CMD_QUI,
  .header.len = sizeof(uvcb)
 };

 if (!test_facility(158))
  return;

 if (uv_call(0, (uint64_t)&uvcb))
  return;

 if (test_bit_inv(BIT_UVC_CMD_SET_SHARED_ACCESS, (unsigned long *)uvcb.inst_calls_list) &&
     test_bit_inv(BIT_UVC_CMD_REMOVE_SHARED_ACCESS, (unsigned long *)uvcb.inst_calls_list))
  prot_virt_guest = 1;
}
