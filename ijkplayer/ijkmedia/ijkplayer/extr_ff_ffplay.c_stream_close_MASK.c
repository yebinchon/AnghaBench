#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int abort_request; scalar_t__ audio_stream; scalar_t__ video_stream; scalar_t__ subtitle_stream; struct TYPE_7__* filename; int /*<<< orphan*/ * handle; scalar_t__ sub_convert_ctx; scalar_t__ img_convert_ctx; int /*<<< orphan*/  play_mutex; int /*<<< orphan*/  accurate_seek_mutex; int /*<<< orphan*/  continue_read_thread; int /*<<< orphan*/  video_accurate_seek_cond; int /*<<< orphan*/  audio_accurate_seek_cond; int /*<<< orphan*/  subpq; int /*<<< orphan*/  sampq; int /*<<< orphan*/  pictq; int /*<<< orphan*/  subtitleq; int /*<<< orphan*/  audioq; int /*<<< orphan*/  videoq; int /*<<< orphan*/  video_refresh_tid; int /*<<< orphan*/  ic; int /*<<< orphan*/  read_tid; } ;
typedef  TYPE_1__ VideoState ;
struct TYPE_9__ {struct TYPE_9__* img_path; scalar_t__ frame_img_codec_ctx; scalar_t__ frame_img_convert_ctx; } ;
struct TYPE_8__ {TYPE_1__* is; TYPE_5__* get_img_info; scalar_t__ soundtouch_enable; } ;
typedef  TYPE_2__ FFPlayer ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 

__attribute__((used)) static void FUNC14(FFPlayer *ffp)
{
    VideoState *is = ffp->is;
    /* XXX: use a special url_shutdown call to abort parse cleanly */
    is->abort_request = 1;
    FUNC10(&is->videoq);
    FUNC10(&is->audioq);
    FUNC5(NULL, AV_LOG_DEBUG, "wait for read_tid\n");
    FUNC2(is->read_tid, NULL);

    /* close each stream */
    if (is->audio_stream >= 0)
        FUNC12(ffp, is->audio_stream);
    if (is->video_stream >= 0)
        FUNC12(ffp, is->video_stream);
    if (is->subtitle_stream >= 0)
        FUNC12(ffp, is->subtitle_stream);

    FUNC7(&is->ic);

    FUNC5(NULL, AV_LOG_DEBUG, "wait for video_refresh_tid\n");
    FUNC2(is->video_refresh_tid, NULL);

    FUNC11(&is->videoq);
    FUNC11(&is->audioq);
    FUNC11(&is->subtitleq);

    /* free all pictures */
    FUNC8(&is->pictq);
    FUNC8(&is->sampq);
    FUNC8(&is->subpq);
    FUNC0(is->audio_accurate_seek_cond);
    FUNC0(is->video_accurate_seek_cond);
    FUNC0(is->continue_read_thread);
    FUNC1(is->accurate_seek_mutex);
    FUNC1(is->play_mutex);
#if !CONFIG_AVFILTER
    FUNC13(is->img_convert_ctx);
#endif
#ifdef FFP_MERGE
    sws_freeContext(is->sub_convert_ctx);
#endif

#if defined(__ANDROID__)
    if (ffp->soundtouch_enable && is->handle != NULL) {
        ijk_soundtouch_destroy(is->handle);
    }
#endif
    if (ffp->get_img_info) {
        if (ffp->get_img_info->frame_img_convert_ctx) {
            FUNC13(ffp->get_img_info->frame_img_convert_ctx);
        }
        if (ffp->get_img_info->frame_img_codec_ctx) {
            FUNC6(&ffp->get_img_info->frame_img_codec_ctx);
        }
        FUNC4(&ffp->get_img_info->img_path);
        FUNC4(&ffp->get_img_info);
    }
    FUNC3(is->filename);
    FUNC3(is);
    ffp->is = NULL;
}