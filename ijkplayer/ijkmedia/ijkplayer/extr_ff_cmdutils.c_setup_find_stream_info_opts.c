
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* codecpar; } ;
struct TYPE_7__ {int nb_streams; TYPE_5__** streams; } ;
struct TYPE_6__ {int codec_id; } ;
typedef TYPE_2__ AVFormatContext ;
typedef int AVDictionary ;


 int AV_LOG_ERROR ;
 int av_log (int *,int ,char*) ;
 int ** av_mallocz (int) ;
 int * filter_codec_opts (int *,int ,TYPE_2__*,TYPE_5__*,int *) ;

AVDictionary **setup_find_stream_info_opts(AVFormatContext *s,
                                           AVDictionary *codec_opts)
{
    int i;
    AVDictionary **opts;

    if (!s->nb_streams)
        return ((void*)0);
    opts = av_mallocz(s->nb_streams * sizeof(*opts));
    if (!opts) {
        av_log(((void*)0), AV_LOG_ERROR,
               "Could not alloc memory for stream options.\n");
        return ((void*)0);
    }
    for (i = 0; i < s->nb_streams; i++)
        opts[i] = filter_codec_opts(codec_opts, s->streams[i]->codecpar->codec_id,
                                    s, s->streams[i], ((void*)0));
    return opts;
}
