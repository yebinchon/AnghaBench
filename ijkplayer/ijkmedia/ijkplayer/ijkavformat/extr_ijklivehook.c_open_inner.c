
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_15__ {int value; } ;
struct TYPE_14__ {int probesize; int format_probesize; int max_analyze_duration; int fps_probe_size; int max_ts_probe; int nb_streams; int * streams; int interrupt_callback; int * metadata; TYPE_2__* priv_data; } ;
struct TYPE_12__ {int url; } ;
struct TYPE_13__ {TYPE_3__* inner; TYPE_1__ io_control; scalar_t__ open_opts; } ;
typedef TYPE_2__ Context ;
typedef int AVStream ;
typedef TYPE_3__ AVFormatContext ;
typedef TYPE_4__ AVDictionaryEntry ;
typedef int AVDictionary ;


 int AVERROR (int ) ;
 int AV_DICT_MATCH_CASE ;
 int ENOMEM ;
 int av_dict_copy (int **,scalar_t__,int ) ;
 int av_dict_free (int **) ;
 TYPE_4__* av_dict_get (int *,char*,int *,int ) ;
 int av_dict_set_int (int **,char*,int,int ) ;
 TYPE_3__* avformat_alloc_context () ;
 int avformat_close_input (TYPE_3__**) ;
 int avformat_find_stream_info (TYPE_3__*,int *) ;
 int * avformat_new_stream (TYPE_3__*,int *) ;
 int avformat_open_input (TYPE_3__**,int ,int *,int **) ;
 int copy_stream_props (int *,int ) ;
 scalar_t__ strtol (int ,int *,int) ;

__attribute__((used)) static int open_inner(AVFormatContext *avf)
{
    Context *c = avf->priv_data;
    AVDictionary *tmp_opts = ((void*)0);
    AVFormatContext *new_avf = ((void*)0);
    int ret = -1;
    int i = 0;
    AVDictionaryEntry *t = ((void*)0);
    int fps_flag = 0;

    new_avf = avformat_alloc_context();
    if (!new_avf) {
        ret = AVERROR(ENOMEM);
        goto fail;
    }

    if (c->open_opts)
        av_dict_copy(&tmp_opts, c->open_opts, 0);

    av_dict_set_int(&tmp_opts, "probesize", avf->probesize, 0);
    av_dict_set_int(&tmp_opts, "formatprobesize", avf->format_probesize, 0);
    av_dict_set_int(&tmp_opts, "analyzeduration", avf->max_analyze_duration, 0);
    av_dict_set_int(&tmp_opts, "fpsprobesize", avf->fps_probe_size, 0);
    av_dict_set_int(&tmp_opts, "max_ts_probe", avf->max_ts_probe, 0);

    t = av_dict_get(tmp_opts, "skip-calc-frame-rate", ((void*)0), AV_DICT_MATCH_CASE);
    if (t) {
        fps_flag = (int) strtol(t->value, ((void*)0), 10);
        if (fps_flag > 0) {
            av_dict_set_int(&new_avf->metadata, "skip-calc-frame-rate", fps_flag, 0);
        }
    }

    new_avf->interrupt_callback = avf->interrupt_callback;
    ret = avformat_open_input(&new_avf, c->io_control.url, ((void*)0), &tmp_opts);
    if (ret < 0)
        goto fail;

    ret = avformat_find_stream_info(new_avf, ((void*)0));
    if (ret < 0)
        goto fail;

    for (i = 0; i < new_avf->nb_streams; i++) {
        AVStream *st = avformat_new_stream(avf, ((void*)0));
        if (!st) {
            ret = AVERROR(ENOMEM);
            goto fail;
        }

        ret = copy_stream_props(st, new_avf->streams[i]);
        if (ret < 0)
            goto fail;
    }

    avformat_close_input(&c->inner);
    c->inner = new_avf;
    new_avf = ((void*)0);
    ret = 0;
fail:
    av_dict_free(&tmp_opts);
    avformat_close_input(&new_avf);
    return ret;
}
