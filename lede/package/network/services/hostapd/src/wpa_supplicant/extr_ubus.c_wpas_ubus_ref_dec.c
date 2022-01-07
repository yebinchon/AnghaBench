
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fd; } ;
struct TYPE_5__ {TYPE_1__ sock; } ;


 TYPE_2__* ctx ;
 scalar_t__ ctx_ref ;
 int eloop_unregister_read_sock (int ) ;
 int ubus_free (TYPE_2__*) ;

__attribute__((used)) static void wpas_ubus_ref_dec(void)
{
 ctx_ref--;
 if (!ctx)
  return;

 if (ctx_ref)
  return;

 eloop_unregister_read_sock(ctx->sock.fd);
 ubus_free(ctx);
 ctx = ((void*)0);
}
