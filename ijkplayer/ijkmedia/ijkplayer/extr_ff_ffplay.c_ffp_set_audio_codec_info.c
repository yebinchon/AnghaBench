
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int audio_codec_info; } ;
typedef TYPE_1__ FFPlayer ;


 int AV_LOG_INFO ;
 int av_asprintf (char*,char const*,char const*) ;
 int av_freep (int *) ;
 int av_log (TYPE_1__*,int ,char*,int ) ;

void ffp_set_audio_codec_info(FFPlayer *ffp, const char *module, const char *codec)
{
    av_freep(&ffp->audio_codec_info);
    ffp->audio_codec_info = av_asprintf("%s, %s", module ? module : "", codec ? codec : "");
    av_log(ffp, AV_LOG_INFO, "AudioCodec: %s\n", ffp->audio_codec_info);
}
