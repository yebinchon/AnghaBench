
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int needs_key_update; int key_update_send_request; TYPE_1__* ctx; } ;
typedef TYPE_2__ ptls_t ;
struct TYPE_4__ {int * update_traffic_key; } ;


 int assert (int ) ;

int ptls_update_key(ptls_t *tls, int request_update)
{
    assert(tls->ctx->update_traffic_key == ((void*)0));
    tls->needs_key_update = 1;
    tls->key_update_send_request = request_update;
    return 0;
}
