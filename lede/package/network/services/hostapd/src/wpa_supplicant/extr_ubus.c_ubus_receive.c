
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubus_context {int dummy; } ;


 int ubus_handle_event (struct ubus_context*) ;

__attribute__((used)) static void ubus_receive(int sock, void *eloop_ctx, void *sock_ctx)
{
 struct ubus_context *ctx = eloop_ctx;
 ubus_handle_event(ctx);
}
