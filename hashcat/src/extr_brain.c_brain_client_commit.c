
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int status_ctx_t ;
typedef int operation ;
struct TYPE_4__ {scalar_t__ pws_cnt; int brain_link_client_fd; } ;
typedef TYPE_1__ hc_device_param_t ;


 int BRAIN_OPERATION_COMMIT ;
 int SEND_FLAGS ;
 int brain_send (int const,int *,int,int ,TYPE_1__*,int const*) ;

bool brain_client_commit (hc_device_param_t *device_param, const status_ctx_t *status_ctx)
{
  if (device_param->pws_cnt == 0) return 1;

  const int brain_link_client_fd = device_param->brain_link_client_fd;

  if (brain_link_client_fd == -1) return 0;

  u8 operation = BRAIN_OPERATION_COMMIT;

  if (brain_send (brain_link_client_fd, &operation, sizeof (operation), SEND_FLAGS, device_param, status_ctx) == 0) return 0;

  return 1;
}
