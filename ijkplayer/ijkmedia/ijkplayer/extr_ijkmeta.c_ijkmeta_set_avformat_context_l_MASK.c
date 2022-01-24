#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_9__ ;
typedef  struct TYPE_24__   TYPE_8__ ;
typedef  struct TYPE_23__   TYPE_7__ ;
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_10__ ;

/* Type definitions */
typedef  scalar_t__ int64_t ;
struct TYPE_19__ {scalar_t__ num; scalar_t__ den; } ;
struct TYPE_25__ {scalar_t__ profile; scalar_t__ level; scalar_t__ format; int codec_type; scalar_t__ width; scalar_t__ height; scalar_t__ sample_rate; scalar_t__ channel_layout; TYPE_3__ sample_aspect_ratio; int /*<<< orphan*/  codec_id; } ;
struct TYPE_24__ {char const* value; } ;
struct TYPE_23__ {scalar_t__ duration; scalar_t__ start_time; scalar_t__ bit_rate; int nb_streams; TYPE_6__** streams; TYPE_1__* iformat; } ;
struct TYPE_21__ {scalar_t__ num; scalar_t__ den; } ;
struct TYPE_20__ {int /*<<< orphan*/  den; int /*<<< orphan*/  num; } ;
struct TYPE_18__ {int /*<<< orphan*/  den; int /*<<< orphan*/  num; } ;
struct TYPE_22__ {int /*<<< orphan*/  metadata; TYPE_5__ avg_frame_rate; TYPE_4__ r_frame_rate; TYPE_2__ sample_aspect_ratio; TYPE_9__* codecpar; } ;
struct TYPE_17__ {char const* name; } ;
struct TYPE_16__ {char const* long_name; } ;
typedef  int /*<<< orphan*/  IjkMediaMeta ;
typedef  TYPE_6__ AVStream ;
typedef  TYPE_7__ AVFormatContext ;
typedef  TYPE_8__ AVDictionaryEntry ;
typedef  TYPE_9__ AVCodecParameters ;
typedef  TYPE_10__ AVCodec ;

/* Variables and functions */
#define  AVMEDIA_TYPE_AUDIO 130 
#define  AVMEDIA_TYPE_SUBTITLE 129 
#define  AVMEDIA_TYPE_VIDEO 128 
 scalar_t__ AV_NOPTS_VALUE ; 
 scalar_t__ AV_PIX_FMT_NONE ; 
 scalar_t__ FF_PROFILE_UNKNOWN ; 
 int /*<<< orphan*/  IJKM_KEY_BITRATE ; 
 int /*<<< orphan*/  IJKM_KEY_CHANNEL_LAYOUT ; 
 int /*<<< orphan*/  IJKM_KEY_CODEC_LEVEL ; 
 int /*<<< orphan*/  IJKM_KEY_CODEC_LONG_NAME ; 
 int /*<<< orphan*/  IJKM_KEY_CODEC_NAME ; 
 int /*<<< orphan*/  IJKM_KEY_CODEC_PIXEL_FORMAT ; 
 int /*<<< orphan*/  IJKM_KEY_CODEC_PROFILE ; 
 int /*<<< orphan*/  IJKM_KEY_CODEC_PROFILE_ID ; 
 int /*<<< orphan*/  IJKM_KEY_DURATION_US ; 
 int /*<<< orphan*/  IJKM_KEY_FORMAT ; 
 int /*<<< orphan*/  IJKM_KEY_FPS_DEN ; 
 int /*<<< orphan*/  IJKM_KEY_FPS_NUM ; 
 int /*<<< orphan*/  IJKM_KEY_HEIGHT ; 
 int /*<<< orphan*/  IJKM_KEY_LANGUAGE ; 
 int /*<<< orphan*/  IJKM_KEY_SAMPLE_RATE ; 
 int /*<<< orphan*/  IJKM_KEY_SAR_DEN ; 
 int /*<<< orphan*/  IJKM_KEY_SAR_NUM ; 
 int /*<<< orphan*/  IJKM_KEY_START_US ; 
 int /*<<< orphan*/  IJKM_KEY_TBR_DEN ; 
 int /*<<< orphan*/  IJKM_KEY_TBR_NUM ; 
 int /*<<< orphan*/  IJKM_KEY_TYPE ; 
 int /*<<< orphan*/  IJKM_KEY_WIDTH ; 
 char const* IJKM_VAL_TYPE__AUDIO ; 
 char const* IJKM_VAL_TYPE__TIMEDTEXT ; 
 char const* IJKM_VAL_TYPE__UNKNOWN ; 
 char const* IJKM_VAL_TYPE__VIDEO ; 
 TYPE_8__* FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char const* FUNC1 (scalar_t__) ; 
 char* FUNC2 (TYPE_10__ const*,scalar_t__) ; 
 TYPE_10__* FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 

void FUNC11(IjkMediaMeta *meta, AVFormatContext *ic)
{
    if (!meta || !ic)
        return;

    if (ic->iformat && ic->iformat->name)
        FUNC10(meta, IJKM_KEY_FORMAT, ic->iformat->name);

    if (ic->duration != AV_NOPTS_VALUE)
        FUNC9(meta, IJKM_KEY_DURATION_US, ic->duration);

    if (ic->start_time != AV_NOPTS_VALUE)
        FUNC9(meta, IJKM_KEY_START_US, ic->start_time);

    if (ic->bit_rate)
        FUNC9(meta, IJKM_KEY_BITRATE, ic->bit_rate);

    IjkMediaMeta *stream_meta = NULL;
    for (int i = 0; i < ic->nb_streams; i++) {
        if (!stream_meta)
            FUNC8(&stream_meta);

        AVStream *st = ic->streams[i];
        if (!st || !st->codecpar)
            continue;

        stream_meta = FUNC7();
        if (!stream_meta)
            continue;

        AVCodecParameters *codecpar = st->codecpar;
        const char *codec_name = FUNC4(codecpar->codec_id);
        if (codec_name)
            FUNC10(stream_meta, IJKM_KEY_CODEC_NAME, codec_name);
        if (codecpar->profile != FF_PROFILE_UNKNOWN) {
            const AVCodec *codec = FUNC3(codecpar->codec_id);
            if (codec) {
                FUNC9(stream_meta, IJKM_KEY_CODEC_PROFILE_ID, codecpar->profile);
                const char *profile = FUNC2(codec, codecpar->profile);
                if (profile)
                    FUNC10(stream_meta, IJKM_KEY_CODEC_PROFILE, profile);
                if (codec->long_name)
                    FUNC10(stream_meta, IJKM_KEY_CODEC_LONG_NAME, codec->long_name);
                FUNC9(stream_meta, IJKM_KEY_CODEC_LEVEL, codecpar->level);
                if (codecpar->format != AV_PIX_FMT_NONE)
                    FUNC10(stream_meta, IJKM_KEY_CODEC_PIXEL_FORMAT, FUNC1(codecpar->format));
            }
        }

        int64_t bitrate = FUNC5(codecpar);
        if (bitrate > 0) {
            FUNC9(stream_meta, IJKM_KEY_BITRATE, bitrate);
        }

        switch (codecpar->codec_type) {
            case AVMEDIA_TYPE_VIDEO: {
                FUNC10(stream_meta, IJKM_KEY_TYPE, IJKM_VAL_TYPE__VIDEO);

                if (codecpar->width > 0)
                    FUNC9(stream_meta, IJKM_KEY_WIDTH, codecpar->width);
                if (codecpar->height > 0)
                    FUNC9(stream_meta, IJKM_KEY_HEIGHT, codecpar->height);
                if (st->sample_aspect_ratio.num > 0 && st->sample_aspect_ratio.den > 0) {
                    FUNC9(stream_meta, IJKM_KEY_SAR_NUM, codecpar->sample_aspect_ratio.num);
                    FUNC9(stream_meta, IJKM_KEY_SAR_DEN, codecpar->sample_aspect_ratio.den);
                }

                if (st->avg_frame_rate.num > 0 && st->avg_frame_rate.den > 0) {
                    FUNC9(stream_meta, IJKM_KEY_FPS_NUM, st->avg_frame_rate.num);
                    FUNC9(stream_meta, IJKM_KEY_FPS_DEN, st->avg_frame_rate.den);
                }
                if (st->r_frame_rate.num > 0 && st->r_frame_rate.den > 0) {
                    FUNC9(stream_meta, IJKM_KEY_TBR_NUM, st->avg_frame_rate.num);
                    FUNC9(stream_meta, IJKM_KEY_TBR_DEN, st->avg_frame_rate.den);
                }
                break;
            }
            case AVMEDIA_TYPE_AUDIO: {
                FUNC10(stream_meta, IJKM_KEY_TYPE, IJKM_VAL_TYPE__AUDIO);

                if (codecpar->sample_rate)
                    FUNC9(stream_meta, IJKM_KEY_SAMPLE_RATE, codecpar->sample_rate);
                if (codecpar->channel_layout)
                    FUNC9(stream_meta, IJKM_KEY_CHANNEL_LAYOUT, codecpar->channel_layout);
                break;
            }
            case AVMEDIA_TYPE_SUBTITLE: {
                FUNC10(stream_meta, IJKM_KEY_TYPE, IJKM_VAL_TYPE__TIMEDTEXT);
                break;
            }
            default: {
                FUNC10(stream_meta, IJKM_KEY_TYPE, IJKM_VAL_TYPE__UNKNOWN);
                break;
            }
        }

        AVDictionaryEntry *lang = FUNC0(st->metadata, "language", NULL, 0);
        if (lang && lang->value)
            FUNC10(stream_meta, IJKM_KEY_LANGUAGE, lang->value);

        FUNC6(meta, stream_meta);
        stream_meta = NULL;
    }

    if (!stream_meta)
        FUNC8(&stream_meta);
}