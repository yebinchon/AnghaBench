#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  serial; } ;
struct TYPE_17__ {int /*<<< orphan*/  serial; } ;
struct TYPE_14__ {int audio_clock_serial; int audio_volume; int pause_req; int initialized_decoder; int abort_request; void* video_refresh_tid; void* continue_read_thread; TYPE_6__ videoq; int /*<<< orphan*/  viddec; void* read_tid; int /*<<< orphan*/  _read_tid; int /*<<< orphan*/  _video_refresh_tid; void* accurate_seek_mutex; void* play_mutex; int /*<<< orphan*/  av_sync_type; scalar_t__ muted; TYPE_7__ extclk; TYPE_6__ audioq; TYPE_7__ audclk; TYPE_7__ vidclk; void* audio_accurate_seek_cond; void* video_accurate_seek_cond; TYPE_6__ subtitleq; int /*<<< orphan*/  sampq; int /*<<< orphan*/  subpq; int /*<<< orphan*/  pictq; int /*<<< orphan*/  handle; scalar_t__ xleft; scalar_t__ ytop; int /*<<< orphan*/ * iformat; int /*<<< orphan*/  filename; } ;
typedef  TYPE_1__ VideoState ;
struct TYPE_15__ {int startup_volume; int /*<<< orphan*/  pipeline; int /*<<< orphan*/  node_vdec; scalar_t__ mediacodec_mpeg2; scalar_t__ mediacodec_hevc; scalar_t__ mediacodec_avc; scalar_t__ mediacodec_all_videos; scalar_t__ mediacodec_default_name; scalar_t__ video_mime_type; int /*<<< orphan*/  video_disable; scalar_t__ async_init_decoder; TYPE_1__* is; int /*<<< orphan*/  start_on_prepared; int /*<<< orphan*/  av_sync_type; scalar_t__ enable_accurate_seek; int /*<<< orphan*/  pictq_size; scalar_t__ soundtouch_enable; } ;
typedef  TYPE_2__ FFPlayer ;
typedef  int /*<<< orphan*/  AVInputFormat ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_FATAL ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  SAMPLE_QUEUE_SIZE ; 
 void* FUNC0 () ; 
 void* FUNC1 () ; 
 void* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*,char*) ; 
 int FUNC3 () ; 
 int SDL_MIX_MAXVOLUME ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SUBPICTURE_QUEUE_SIZE ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 void* FUNC6 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 TYPE_1__* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_6__*,void*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,TYPE_6__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (TYPE_7__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (TYPE_6__*) ; 
 int /*<<< orphan*/  read_thread ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*) ; 
 scalar_t__ FUNC18 (scalar_t__) ; 
 int /*<<< orphan*/  video_refresh_thread ; 

__attribute__((used)) static VideoState *FUNC19(FFPlayer *ffp, const char *filename, AVInputFormat *iformat)
{
    FUNC5(!ffp->is);
    VideoState *is;

    is = FUNC9(sizeof(VideoState));
    if (!is)
        return NULL;
    is->filename = FUNC10(filename);
    if (!is->filename)
        goto fail;
    is->iformat = iformat;
    is->ytop    = 0;
    is->xleft   = 0;
#if defined(__ANDROID__)
    if (ffp->soundtouch_enable) {
        is->handle = ijk_soundtouch_create();
    }
#endif

    /* start video display */
    if (FUNC13(&is->pictq, &is->videoq, ffp->pictq_size, 1) < 0)
        goto fail;
    if (FUNC13(&is->subpq, &is->subtitleq, SUBPICTURE_QUEUE_SIZE, 0) < 0)
        goto fail;
    if (FUNC13(&is->sampq, &is->audioq, SAMPLE_QUEUE_SIZE, 1) < 0)
        goto fail;

    if (FUNC16(&is->videoq) < 0 ||
        FUNC16(&is->audioq) < 0 ||
        FUNC16(&is->subtitleq) < 0)
        goto fail;

    if (!(is->continue_read_thread = FUNC0())) {
        FUNC8(NULL, AV_LOG_FATAL, "SDL_CreateCond(): %s\n", FUNC3());
        goto fail;
    }

    if (!(is->video_accurate_seek_cond = FUNC0())) {
        FUNC8(NULL, AV_LOG_FATAL, "SDL_CreateCond(): %s\n", FUNC3());
        ffp->enable_accurate_seek = 0;
    }

    if (!(is->audio_accurate_seek_cond = FUNC0())) {
        FUNC8(NULL, AV_LOG_FATAL, "SDL_CreateCond(): %s\n", FUNC3());
        ffp->enable_accurate_seek = 0;
    }

    FUNC15(&is->vidclk, &is->videoq.serial);
    FUNC15(&is->audclk, &is->audioq.serial);
    FUNC15(&is->extclk, &is->extclk.serial);
    is->audio_clock_serial = -1;
    if (ffp->startup_volume < 0)
        FUNC8(NULL, AV_LOG_WARNING, "-volume=%d < 0, setting to 0\n", ffp->startup_volume);
    if (ffp->startup_volume > 100)
        FUNC8(NULL, AV_LOG_WARNING, "-volume=%d > 100, setting to 100\n", ffp->startup_volume);
    ffp->startup_volume = FUNC6(ffp->startup_volume, 0, 100);
    ffp->startup_volume = FUNC6(SDL_MIX_MAXVOLUME * ffp->startup_volume / 100, 0, SDL_MIX_MAXVOLUME);
    is->audio_volume = ffp->startup_volume;
    is->muted = 0;
    is->av_sync_type = ffp->av_sync_type;

    is->play_mutex = FUNC1();
    is->accurate_seek_mutex = FUNC1();
    ffp->is = is;
    is->pause_req = !ffp->start_on_prepared;

    is->video_refresh_tid = FUNC2(&is->_video_refresh_tid, video_refresh_thread, ffp, "ff_vout");
    if (!is->video_refresh_tid) {
        FUNC7(&ffp->is);
        return NULL;
    }

    is->initialized_decoder = 0;
    is->read_tid = FUNC2(&is->_read_tid, read_thread, ffp, "ff_read");
    if (!is->read_tid) {
        FUNC8(NULL, AV_LOG_FATAL, "SDL_CreateThread(): %s\n", FUNC3());
        goto fail;
    }

    if (ffp->async_init_decoder && !ffp->video_disable && ffp->video_mime_type && FUNC18(ffp->video_mime_type) > 0
                    && ffp->mediacodec_default_name && FUNC18(ffp->mediacodec_default_name) > 0) {
        if (ffp->mediacodec_all_videos || ffp->mediacodec_avc || ffp->mediacodec_hevc || ffp->mediacodec_mpeg2) {
            FUNC11(&is->viddec, NULL, &is->videoq, is->continue_read_thread);
            ffp->node_vdec = FUNC12(ffp->pipeline, ffp);
        }
    }
    is->initialized_decoder = 1;

    return is;
fail:
    is->initialized_decoder = 1;
    is->abort_request = true;
    if (is->video_refresh_tid)
        FUNC4(is->video_refresh_tid, NULL);
    FUNC17(ffp);
    return NULL;
}