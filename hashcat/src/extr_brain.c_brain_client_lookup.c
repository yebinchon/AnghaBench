
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char u8 ;
typedef int status_ctx_t ;
typedef int out_size ;
typedef int operation ;
typedef int in_size ;
struct TYPE_3__ {int pws_pre_cnt; int brain_link_client_fd; scalar_t__ size_brain_link_in; scalar_t__ brain_link_out_buf; scalar_t__ brain_link_in_buf; } ;
typedef TYPE_1__ hc_device_param_t ;


 int BRAIN_HASH_SIZE ;
 char BRAIN_OPERATION_HASH_LOOKUP ;
 int SEND_FLAGS ;
 int brain_recv (int const,...) ;
 int brain_send (int const,...) ;

bool brain_client_lookup (hc_device_param_t *device_param, const status_ctx_t *status_ctx)
{
  if (device_param->pws_pre_cnt == 0) return 1;

  const int brain_link_client_fd = device_param->brain_link_client_fd;

  if (brain_link_client_fd == -1) return 0;

  char *recvbuf = (char *) device_param->brain_link_in_buf;
  char *sendbuf = (char *) device_param->brain_link_out_buf;

  int in_size = 0;
  int out_size = device_param->pws_pre_cnt * BRAIN_HASH_SIZE;

  u8 operation = BRAIN_OPERATION_HASH_LOOKUP;

  if (brain_send (brain_link_client_fd, &operation, sizeof (operation), SEND_FLAGS, device_param, status_ctx) == 0) return 0;
  if (brain_send (brain_link_client_fd, &out_size, sizeof (out_size), SEND_FLAGS, device_param, status_ctx) == 0) return 0;
  if (brain_send (brain_link_client_fd, sendbuf, out_size, SEND_FLAGS, device_param, status_ctx) == 0) return 0;

  if (brain_recv (brain_link_client_fd, &in_size, sizeof (in_size), 0, device_param, status_ctx) == 0) return 0;

  if (in_size > (int) device_param->size_brain_link_in) return 0;

  if (brain_recv (brain_link_client_fd, recvbuf, (size_t) in_size, 0, device_param, status_ctx) == 0) return 0;

  return 1;
}
