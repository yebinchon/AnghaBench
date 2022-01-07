
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int work ;
typedef int words_off ;
typedef int u8 ;
typedef int u64 ;
typedef int status_ctx_t ;
typedef int operation ;
struct TYPE_5__ {int brain_link_client_fd; } ;
typedef TYPE_1__ hc_device_param_t ;


 int BRAIN_OPERATION_ATTACK_RESERVE ;
 int SEND_FLAGS ;
 int brain_recv (int const,int *,int,int ,TYPE_1__*,int const*) ;
 int brain_send (int const,int *,int,int ,TYPE_1__*,int const*) ;

bool brain_client_reserve (hc_device_param_t *device_param, const status_ctx_t *status_ctx, u64 words_off, u64 work, u64 *overlap)
{
  const int brain_link_client_fd = device_param->brain_link_client_fd;

  if (brain_link_client_fd == -1) return 0;

  u8 operation = BRAIN_OPERATION_ATTACK_RESERVE;

  if (brain_send (brain_link_client_fd, &operation, sizeof (operation), SEND_FLAGS, device_param, status_ctx) == 0) return 0;
  if (brain_send (brain_link_client_fd, &words_off, sizeof (words_off), 0, device_param, status_ctx) == 0) return 0;
  if (brain_send (brain_link_client_fd, &work, sizeof (work), 0, device_param, status_ctx) == 0) return 0;

  if (brain_recv (brain_link_client_fd, overlap, sizeof (u64), 0, device_param, status_ctx) == 0) return 0;

  return 1;
}
