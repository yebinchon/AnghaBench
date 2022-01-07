
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int inner; } ;
struct TYPE_6__ {TYPE_1__* ijkio_app_ctx; TYPE_3__* priv_data; } ;
struct TYPE_5__ {scalar_t__ ijkio_interrupt_callback; } ;
typedef TYPE_2__ IjkURLContext ;
typedef TYPE_3__ IjkIOFFioContext ;
typedef int IjkAVDictionary ;
typedef int AVIOInterruptCB ;
typedef int AVDictionary ;


 int av_dict_free (int **) ;
 int av_strstart (char const*,char*,char const**) ;
 int ffurl_open_whitelist (int *,char const*,int,int *,int **,int *,int *,int *) ;
 int ijkio_copy_options (int **,int *) ;

__attribute__((used)) static int ijkio_ffio_open(IjkURLContext *h, const char *url, int flags, IjkAVDictionary **options) {
    int ret = -1;

    IjkIOFFioContext *c= h->priv_data;
    if (!c)
        return -1;

    AVDictionary *opts = ((void*)0);
    ijkio_copy_options(&opts, *options);

    av_strstart(url, "ffio:", &url);
    if (h->ijkio_app_ctx) {
        ret = ffurl_open_whitelist(&c->inner, url, flags, (AVIOInterruptCB *)h->ijkio_app_ctx->ijkio_interrupt_callback,
                                &opts, ((void*)0), ((void*)0), ((void*)0));
    } else {
        ret = -1;
    }

    av_dict_free(&opts);

    return ret;
}
