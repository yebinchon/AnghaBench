
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {TYPE_2__* video_st; } ;
typedef TYPE_3__ VideoState ;
struct TYPE_20__ {int pts; int sample_aspect_ratio; int format; int height; int width; int opaque; } ;
struct TYPE_19__ {TYPE_3__* is; } ;
struct TYPE_18__ {TYPE_5__* opaque; } ;
struct TYPE_17__ {TYPE_1__* codecpar; int frame_height; int frame_width; int weak_vout; TYPE_7__* ffp; } ;
struct TYPE_16__ {int presentationTimeUs; } ;
struct TYPE_14__ {int time_base; } ;
struct TYPE_13__ {int sample_aspect_ratio; } ;
typedef TYPE_4__ SDL_AMediaCodecBufferInfo ;
typedef TYPE_5__ IJKFF_Pipenode_Opaque ;
typedef TYPE_6__ IJKFF_Pipenode ;
typedef TYPE_7__ FFPlayer ;
typedef TYPE_8__ AVFrame ;


 int AV_NOPTS_VALUE ;
 int AV_TIME_BASE_Q ;
 int IJK_AV_PIX_FMT__ANDROID_MEDIACODEC ;
 int SDL_VoutAndroid_obtainBufferProxy (int ,int,int,TYPE_4__*) ;
 int av_rescale_q (int ,int ,int ) ;

__attribute__((used)) static int amc_fill_frame(
    IJKFF_Pipenode *node,
    AVFrame *frame,
    int *got_frame,
    int output_buffer_index,
    int acodec_serial,
    SDL_AMediaCodecBufferInfo *buffer_info)
{
    IJKFF_Pipenode_Opaque *opaque = node->opaque;
    FFPlayer *ffp = opaque->ffp;
    VideoState *is = ffp->is;

    frame->opaque = SDL_VoutAndroid_obtainBufferProxy(opaque->weak_vout, acodec_serial, output_buffer_index, buffer_info);
    if (!frame->opaque)
        goto fail;

    frame->width = opaque->frame_width;
    frame->height = opaque->frame_height;
    frame->format = IJK_AV_PIX_FMT__ANDROID_MEDIACODEC;
    frame->sample_aspect_ratio = opaque->codecpar->sample_aspect_ratio;
    frame->pts = av_rescale_q(buffer_info->presentationTimeUs, AV_TIME_BASE_Q, is->video_st->time_base);
    if (frame->pts < 0)
        frame->pts = AV_NOPTS_VALUE;


    *got_frame = 1;
    return 0;
fail:
    *got_frame = 0;
    return -1;
}
