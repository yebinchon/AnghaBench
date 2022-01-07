
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int audio_stream; int video_stream; int subtitle_stream; int * subtitle_st; int * video_st; int * audio_st; int subdec; int subpq; int viddec; int pictq; int rdft_bits; int * rdft; int rdft_data; int * audio_buf; int audio_buf1_size; int audio_buf1; int swr_ctx; int auddec; int sampq; TYPE_4__* ic; } ;
typedef TYPE_2__ VideoState ;
struct TYPE_11__ {int codec_type; } ;
struct TYPE_10__ {int nb_streams; TYPE_1__** streams; } ;
struct TYPE_9__ {int aout; TYPE_2__* is; } ;
struct TYPE_7__ {int discard; TYPE_5__* codecpar; } ;
typedef TYPE_3__ FFPlayer ;
typedef TYPE_4__ AVFormatContext ;
typedef TYPE_5__ AVCodecParameters ;


 int AVDISCARD_ALL ;



 int SDL_AoutCloseAudio (int ) ;
 int av_freep (int *) ;
 int av_rdft_end (int *) ;
 int decoder_abort (int *,int *) ;
 int decoder_destroy (int *) ;
 int swr_free (int *) ;

__attribute__((used)) static void stream_component_close(FFPlayer *ffp, int stream_index)
{
    VideoState *is = ffp->is;
    AVFormatContext *ic = is->ic;
    AVCodecParameters *codecpar;

    if (stream_index < 0 || stream_index >= ic->nb_streams)
        return;
    codecpar = ic->streams[stream_index]->codecpar;

    switch (codecpar->codec_type) {
    case 130:
        decoder_abort(&is->auddec, &is->sampq);
        SDL_AoutCloseAudio(ffp->aout);

        decoder_destroy(&is->auddec);
        swr_free(&is->swr_ctx);
        av_freep(&is->audio_buf1);
        is->audio_buf1_size = 0;
        is->audio_buf = ((void*)0);
        break;
    case 128:
        decoder_abort(&is->viddec, &is->pictq);
        decoder_destroy(&is->viddec);
        break;
    case 129:
        decoder_abort(&is->subdec, &is->subpq);
        decoder_destroy(&is->subdec);
        break;
    default:
        break;
    }

    ic->streams[stream_index]->discard = AVDISCARD_ALL;
    switch (codecpar->codec_type) {
    case 130:
        is->audio_st = ((void*)0);
        is->audio_stream = -1;
        break;
    case 128:
        is->video_st = ((void*)0);
        is->video_stream = -1;
        break;
    case 129:
        is->subtitle_st = ((void*)0);
        is->subtitle_stream = -1;
        break;
    default:
        break;
    }
}
