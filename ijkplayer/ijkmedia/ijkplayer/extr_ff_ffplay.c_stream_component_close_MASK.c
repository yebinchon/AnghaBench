#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int audio_stream; int video_stream; int subtitle_stream; int /*<<< orphan*/ * subtitle_st; int /*<<< orphan*/ * video_st; int /*<<< orphan*/ * audio_st; int /*<<< orphan*/  subdec; int /*<<< orphan*/  subpq; int /*<<< orphan*/  viddec; int /*<<< orphan*/  pictq; int /*<<< orphan*/  rdft_bits; int /*<<< orphan*/ * rdft; int /*<<< orphan*/  rdft_data; int /*<<< orphan*/ * audio_buf; int /*<<< orphan*/  audio_buf1_size; int /*<<< orphan*/  audio_buf1; int /*<<< orphan*/  swr_ctx; int /*<<< orphan*/  auddec; int /*<<< orphan*/  sampq; TYPE_4__* ic; } ;
typedef  TYPE_2__ VideoState ;
struct TYPE_11__ {int codec_type; } ;
struct TYPE_10__ {int nb_streams; TYPE_1__** streams; } ;
struct TYPE_9__ {int /*<<< orphan*/  aout; TYPE_2__* is; } ;
struct TYPE_7__ {int /*<<< orphan*/  discard; TYPE_5__* codecpar; } ;
typedef  TYPE_3__ FFPlayer ;
typedef  TYPE_4__ AVFormatContext ;
typedef  TYPE_5__ AVCodecParameters ;

/* Variables and functions */
 int /*<<< orphan*/  AVDISCARD_ALL ; 
#define  AVMEDIA_TYPE_AUDIO 130 
#define  AVMEDIA_TYPE_SUBTITLE 129 
#define  AVMEDIA_TYPE_VIDEO 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(FFPlayer *ffp, int stream_index)
{
    VideoState *is = ffp->is;
    AVFormatContext *ic = is->ic;
    AVCodecParameters *codecpar;

    if (stream_index < 0 || stream_index >= ic->nb_streams)
        return;
    codecpar = ic->streams[stream_index]->codecpar;

    switch (codecpar->codec_type) {
    case AVMEDIA_TYPE_AUDIO:
        FUNC3(&is->auddec, &is->sampq);
        FUNC0(ffp->aout);

        FUNC4(&is->auddec);
        FUNC5(&is->swr_ctx);
        FUNC1(&is->audio_buf1);
        is->audio_buf1_size = 0;
        is->audio_buf = NULL;

#ifdef FFP_MERGE
        if (is->rdft) {
            av_rdft_end(is->rdft);
            av_freep(&is->rdft_data);
            is->rdft = NULL;
            is->rdft_bits = 0;
        }
#endif
        break;
    case AVMEDIA_TYPE_VIDEO:
        FUNC3(&is->viddec, &is->pictq);
        FUNC4(&is->viddec);
        break;
    case AVMEDIA_TYPE_SUBTITLE:
        FUNC3(&is->subdec, &is->subpq);
        FUNC4(&is->subdec);
        break;
    default:
        break;
    }

    ic->streams[stream_index]->discard = AVDISCARD_ALL;
    switch (codecpar->codec_type) {
    case AVMEDIA_TYPE_AUDIO:
        is->audio_st = NULL;
        is->audio_stream = -1;
        break;
    case AVMEDIA_TYPE_VIDEO:
        is->video_st = NULL;
        is->video_stream = -1;
        break;
    case AVMEDIA_TYPE_SUBTITLE:
        is->subtitle_st = NULL;
        is->subtitle_stream = -1;
        break;
    default:
        break;
    }
}