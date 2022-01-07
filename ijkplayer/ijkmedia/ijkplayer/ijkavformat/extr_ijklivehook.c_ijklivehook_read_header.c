
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int filename; TYPE_2__* priv_data; } ;
struct TYPE_8__ {int size; scalar_t__ retry_counter; int url; } ;
struct TYPE_9__ {int discontinuity; TYPE_1__ io_control; int open_opts; scalar_t__ app_ctx_intptr; int * app_ctx; } ;
typedef TYPE_2__ Context ;
typedef TYPE_3__ AVFormatContext ;
typedef int AVDictionary ;
typedef int AVApplicationContext ;



 int AV_LOG_WARNING ;
 int av_dict_copy (int *,int *,int ) ;
 int av_dict_set (int **,char*,int *,int ) ;
 int av_log (TYPE_3__*,int ,char*) ;
 scalar_t__ av_stristart (int ,char*,int *) ;
 int av_strstart (int ,char*,char const**) ;
 int ijkurlhook_call_inject (TYPE_3__*) ;
 int open_inner (TYPE_3__*) ;
 int strlcpy (int ,char const*,int) ;

__attribute__((used)) static int ijklivehook_read_header(AVFormatContext *avf, AVDictionary **options)
{
    Context *c = avf->priv_data;
    const char *inner_url = ((void*)0);
    int ret = -1;

    c->app_ctx = (AVApplicationContext *)(intptr_t)c->app_ctx_intptr;
    av_strstart(avf->filename, "ijklivehook:", &inner_url);

    c->io_control.size = sizeof(c->io_control);
    strlcpy(c->io_control.url, inner_url, sizeof(c->io_control.url));

    if (av_stristart(c->io_control.url, "rtmp", ((void*)0)) ||
        av_stristart(c->io_control.url, "rtsp", ((void*)0))) {

        av_log(avf, AV_LOG_WARNING, "remove 'timeout' option for rtmp.\n");
        av_dict_set(options, "timeout", ((void*)0), 0);
    }

    if (options)
        av_dict_copy(&c->open_opts, *options, 0);

    c->io_control.retry_counter = 0;
    ret = ijkurlhook_call_inject(avf);
    if (ret) {
        ret = 128;
        goto fail;
    }
    ret = open_inner(avf);
    while (ret < 0) {

        switch (ret) {
            case 128:
                goto fail;
        }

        c->io_control.retry_counter++;
        ret = ijkurlhook_call_inject(avf);
        if (ret) {
            ret = 128;
            goto fail;
        }

        c->discontinuity = 1;
        ret = open_inner(avf);
    }

    return 0;
fail:
    return ret;
}
