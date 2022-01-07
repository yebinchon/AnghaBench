
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_16__ {int serial; } ;
struct TYPE_17__ {int serial; } ;
struct TYPE_14__ {int audio_clock_serial; int audio_volume; int pause_req; int initialized_decoder; int abort_request; void* video_refresh_tid; void* continue_read_thread; TYPE_6__ videoq; int viddec; void* read_tid; int _read_tid; int _video_refresh_tid; void* accurate_seek_mutex; void* play_mutex; int av_sync_type; scalar_t__ muted; TYPE_7__ extclk; TYPE_6__ audioq; TYPE_7__ audclk; TYPE_7__ vidclk; void* audio_accurate_seek_cond; void* video_accurate_seek_cond; TYPE_6__ subtitleq; int sampq; int subpq; int pictq; int handle; scalar_t__ xleft; scalar_t__ ytop; int * iformat; int filename; } ;
typedef TYPE_1__ VideoState ;
struct TYPE_15__ {int startup_volume; int pipeline; int node_vdec; scalar_t__ mediacodec_mpeg2; scalar_t__ mediacodec_hevc; scalar_t__ mediacodec_avc; scalar_t__ mediacodec_all_videos; scalar_t__ mediacodec_default_name; scalar_t__ video_mime_type; int video_disable; scalar_t__ async_init_decoder; TYPE_1__* is; int start_on_prepared; int av_sync_type; scalar_t__ enable_accurate_seek; int pictq_size; scalar_t__ soundtouch_enable; } ;
typedef TYPE_2__ FFPlayer ;
typedef int AVInputFormat ;


 int AV_LOG_FATAL ;
 int AV_LOG_WARNING ;
 int SAMPLE_QUEUE_SIZE ;
 void* SDL_CreateCond () ;
 void* SDL_CreateMutex () ;
 void* SDL_CreateThreadEx (int *,int ,TYPE_2__*,char*) ;
 int SDL_GetError () ;
 int SDL_MIX_MAXVOLUME ;
 int SDL_WaitThread (void*,int *) ;
 int SUBPICTURE_QUEUE_SIZE ;
 int assert (int) ;
 void* av_clip (int,int ,int) ;
 int av_freep (TYPE_1__**) ;
 int av_log (int *,int ,char*,int) ;
 TYPE_1__* av_mallocz (int) ;
 int av_strdup (char const*) ;
 int decoder_init (int *,int *,TYPE_6__*,void*) ;
 int ffpipeline_init_video_decoder (int ,TYPE_2__*) ;
 scalar_t__ frame_queue_init (int *,TYPE_6__*,int ,int) ;
 int ijk_soundtouch_create () ;
 int init_clock (TYPE_7__*,int *) ;
 scalar_t__ packet_queue_init (TYPE_6__*) ;
 int read_thread ;
 int stream_close (TYPE_2__*) ;
 scalar_t__ strlen (scalar_t__) ;
 int video_refresh_thread ;

__attribute__((used)) static VideoState *stream_open(FFPlayer *ffp, const char *filename, AVInputFormat *iformat)
{
    assert(!ffp->is);
    VideoState *is;

    is = av_mallocz(sizeof(VideoState));
    if (!is)
        return ((void*)0);
    is->filename = av_strdup(filename);
    if (!is->filename)
        goto fail;
    is->iformat = iformat;
    is->ytop = 0;
    is->xleft = 0;







    if (frame_queue_init(&is->pictq, &is->videoq, ffp->pictq_size, 1) < 0)
        goto fail;
    if (frame_queue_init(&is->subpq, &is->subtitleq, SUBPICTURE_QUEUE_SIZE, 0) < 0)
        goto fail;
    if (frame_queue_init(&is->sampq, &is->audioq, SAMPLE_QUEUE_SIZE, 1) < 0)
        goto fail;

    if (packet_queue_init(&is->videoq) < 0 ||
        packet_queue_init(&is->audioq) < 0 ||
        packet_queue_init(&is->subtitleq) < 0)
        goto fail;

    if (!(is->continue_read_thread = SDL_CreateCond())) {
        av_log(((void*)0), AV_LOG_FATAL, "SDL_CreateCond(): %s\n", SDL_GetError());
        goto fail;
    }

    if (!(is->video_accurate_seek_cond = SDL_CreateCond())) {
        av_log(((void*)0), AV_LOG_FATAL, "SDL_CreateCond(): %s\n", SDL_GetError());
        ffp->enable_accurate_seek = 0;
    }

    if (!(is->audio_accurate_seek_cond = SDL_CreateCond())) {
        av_log(((void*)0), AV_LOG_FATAL, "SDL_CreateCond(): %s\n", SDL_GetError());
        ffp->enable_accurate_seek = 0;
    }

    init_clock(&is->vidclk, &is->videoq.serial);
    init_clock(&is->audclk, &is->audioq.serial);
    init_clock(&is->extclk, &is->extclk.serial);
    is->audio_clock_serial = -1;
    if (ffp->startup_volume < 0)
        av_log(((void*)0), AV_LOG_WARNING, "-volume=%d < 0, setting to 0\n", ffp->startup_volume);
    if (ffp->startup_volume > 100)
        av_log(((void*)0), AV_LOG_WARNING, "-volume=%d > 100, setting to 100\n", ffp->startup_volume);
    ffp->startup_volume = av_clip(ffp->startup_volume, 0, 100);
    ffp->startup_volume = av_clip(SDL_MIX_MAXVOLUME * ffp->startup_volume / 100, 0, SDL_MIX_MAXVOLUME);
    is->audio_volume = ffp->startup_volume;
    is->muted = 0;
    is->av_sync_type = ffp->av_sync_type;

    is->play_mutex = SDL_CreateMutex();
    is->accurate_seek_mutex = SDL_CreateMutex();
    ffp->is = is;
    is->pause_req = !ffp->start_on_prepared;

    is->video_refresh_tid = SDL_CreateThreadEx(&is->_video_refresh_tid, video_refresh_thread, ffp, "ff_vout");
    if (!is->video_refresh_tid) {
        av_freep(&ffp->is);
        return ((void*)0);
    }

    is->initialized_decoder = 0;
    is->read_tid = SDL_CreateThreadEx(&is->_read_tid, read_thread, ffp, "ff_read");
    if (!is->read_tid) {
        av_log(((void*)0), AV_LOG_FATAL, "SDL_CreateThread(): %s\n", SDL_GetError());
        goto fail;
    }

    if (ffp->async_init_decoder && !ffp->video_disable && ffp->video_mime_type && strlen(ffp->video_mime_type) > 0
                    && ffp->mediacodec_default_name && strlen(ffp->mediacodec_default_name) > 0) {
        if (ffp->mediacodec_all_videos || ffp->mediacodec_avc || ffp->mediacodec_hevc || ffp->mediacodec_mpeg2) {
            decoder_init(&is->viddec, ((void*)0), &is->videoq, is->continue_read_thread);
            ffp->node_vdec = ffpipeline_init_video_decoder(ffp->pipeline, ffp);
        }
    }
    is->initialized_decoder = 1;

    return is;
fail:
    is->initialized_decoder = 1;
    is->abort_request = 1;
    if (is->video_refresh_tid)
        SDL_WaitThread(is->video_refresh_tid, ((void*)0));
    stream_close(ffp);
    return ((void*)0);
}
