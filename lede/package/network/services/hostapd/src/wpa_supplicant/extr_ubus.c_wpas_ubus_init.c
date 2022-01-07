
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int fd; } ;
struct TYPE_6__ {TYPE_1__ sock; int connection_lost; } ;


 TYPE_2__* ctx ;
 int eloop_register_read_sock (int ,int ,TYPE_2__*,int *) ;
 TYPE_2__* ubus_connect (int *) ;
 int ubus_receive ;
 int wpas_ubus_connection_lost ;

__attribute__((used)) static bool wpas_ubus_init(void)
{
 if (ctx)
  return 1;

 ctx = ubus_connect(((void*)0));
 if (!ctx)
  return 0;

 ctx->connection_lost = wpas_ubus_connection_lost;
 eloop_register_read_sock(ctx->sock.fd, ubus_receive, ctx, ((void*)0));
 return 1;
}
