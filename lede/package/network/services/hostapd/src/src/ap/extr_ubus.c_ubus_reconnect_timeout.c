
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int fd; } ;
struct TYPE_7__ {TYPE_1__ sock; } ;


 TYPE_2__* ctx ;
 int eloop_register_read_sock (int ,int ,TYPE_2__*,int *) ;
 int eloop_register_timeout (int,int ,void (*) (void*,void*),TYPE_2__*,int *) ;
 int ubus_receive ;
 scalar_t__ ubus_reconnect (TYPE_2__*,int *) ;

__attribute__((used)) static void ubus_reconnect_timeout(void *eloop_data, void *user_ctx)
{
 if (ubus_reconnect(ctx, ((void*)0))) {
  eloop_register_timeout(1, 0, ubus_reconnect_timeout, ctx, ((void*)0));
  return;
 }

 eloop_register_read_sock(ctx->sock.fd, ubus_receive, ctx, ((void*)0));
}
