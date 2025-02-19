
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int speed ;
typedef int int64_t ;
struct TYPE_6__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_8__ {int size; int is_full_speed; int io_bytes; int elapsed_milli; int member_0; } ;
struct TYPE_7__ {scalar_t__ app_ctx; } ;
typedef TYPE_2__ Context ;
typedef TYPE_3__ AVAppAsyncReadSpeed ;


 int av_application_on_async_read_speed (scalar_t__,TYPE_3__*) ;

__attribute__((used)) static void call_inject_async_fill_speed(URLContext *h, int is_full_speed, int64_t bytes, int64_t elapsed_micro)
{
    Context *c = h->priv_data;
    int64_t elapsed_milli = elapsed_micro / 1000;

    if (c->app_ctx && bytes > 0 && elapsed_milli > 0) {
        AVAppAsyncReadSpeed speed = {0};
        speed.size = sizeof(speed);
        speed.is_full_speed = is_full_speed;
        speed.io_bytes = bytes;
        speed.elapsed_milli = elapsed_milli;
        av_application_on_async_read_speed(c->app_ctx, &speed);
    }
}
