
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int * url; scalar_t__ is_handled; } ;
struct TYPE_7__ {int interrupt_callback; TYPE_1__* priv_data; } ;
struct TYPE_6__ {TYPE_5__ io_control; scalar_t__ app_ctx; } ;
typedef TYPE_1__ Context ;
typedef TYPE_2__ AVFormatContext ;


 int AVAPP_CTRL_WILL_LIVE_OPEN ;
 int AVERROR_EXIT ;
 int AV_LOG_INFO ;
 int av_application_on_io_control (scalar_t__,int ,TYPE_5__*) ;
 int av_log (TYPE_2__*,int ,char*,int *) ;
 scalar_t__ ff_check_interrupt (int *) ;

__attribute__((used)) static int ijkurlhook_call_inject(AVFormatContext *h)
{
    Context *c = h->priv_data;
    int ret = 0;

    if (ff_check_interrupt(&h->interrupt_callback)) {
        ret = AVERROR_EXIT;
        goto fail;
    }

    if (c->app_ctx) {
        av_log(h, AV_LOG_INFO, "livehook %s\n", c->io_control.url);
        c->io_control.is_handled = 0;
        ret = av_application_on_io_control(c->app_ctx, AVAPP_CTRL_WILL_LIVE_OPEN, &c->io_control);
        if (ret || !c->io_control.url[0]) {
            ret = AVERROR_EXIT;
            goto fail;
        }
    }

    if (ff_check_interrupt(&h->interrupt_callback)) {
        ret = AVERROR_EXIT;
        goto fail;
    }

fail:
    return ret;
}
