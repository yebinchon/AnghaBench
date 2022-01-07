
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_16__ ;


typedef int uint8_t ;
typedef scalar_t__ int64_t ;
struct TYPE_23__ {int first_frame_decoded; int first_frame_decoded_time; } ;
struct TYPE_21__ {scalar_t__ abort_request; } ;
struct TYPE_24__ {int video_accurate_seek_req; scalar_t__ seek_pos; double accurate_seek_vframe_pts; scalar_t__ accurate_seek_start_time; scalar_t__ audio_stream; scalar_t__ accurate_seek_aframe_pts; TYPE_3__ viddec; int pictq; TYPE_1__ videoq; int accurate_seek_mutex; int video_accurate_seek_cond; int abort_request; scalar_t__ audio_accurate_seek_req; int audio_accurate_seek_cond; int drop_vframe_count; int seek_req; } ;
typedef TYPE_4__ VideoState ;
struct TYPE_22__ {int den; int num; } ;
struct TYPE_27__ {scalar_t__ width; scalar_t__ height; scalar_t__ format; TYPE_2__ sample_aspect_ratio; int linesize; scalar_t__ data; int pict_type; } ;
struct TYPE_26__ {scalar_t__ accurate_seek_timeout; scalar_t__ enable_accurate_seek; TYPE_4__* is; } ;
struct TYPE_25__ {scalar_t__ width; scalar_t__ height; scalar_t__ format; double pts; double duration; int serial; int frame; TYPE_2__ sar; TYPE_16__* bmp; scalar_t__ pos; scalar_t__ allocated; scalar_t__ uploaded; } ;
struct TYPE_20__ {int sar_den; int sar_num; } ;
typedef TYPE_5__ Frame ;
typedef TYPE_6__ FFPlayer ;
typedef TYPE_7__ AVFrame ;


 int ALOGD (char*) ;
 int AV_LOG_FATAL ;
 int AV_LOG_INFO ;
 int AV_LOG_WARNING ;
 int FFP_MSG_ACCURATE_SEEK_COMPLETE ;
 int FFP_MSG_VIDEO_DECODED_START ;
 int FFP_MSG_VIDEO_SIZE_CHANGED ;
 scalar_t__ MAX_DEVIATION ;
 int SDL_CondSignal (int ) ;
 int SDL_CondWaitTimeout (int ,int ,scalar_t__) ;
 int SDL_GetTickHR () ;
 int SDL_LockMutex (int ) ;
 int SDL_UnlockMutex (int ) ;
 scalar_t__ SDL_VoutFillFrameYUVOverlay (TYPE_16__*,TYPE_7__*) ;
 int SDL_VoutLockYUVOverlay (TYPE_16__*) ;
 int SDL_VoutUnlockYUVOverlay (TYPE_16__*) ;
 int alloc_picture (TYPE_6__*,scalar_t__) ;
 int av_frame_move_ref (int ,TYPE_7__*) ;
 int av_get_picture_type_char (int ) ;
 int av_gettime_relative () ;
 int av_image_copy (int ,int ,int const**,int ,scalar_t__,scalar_t__,scalar_t__) ;
 int av_log (int *,int ,char*,...) ;
 int av_usleep (int) ;
 int data ;
 int exit (int) ;
 int ffp_notify_msg1 (TYPE_6__*,int ) ;
 int ffp_notify_msg2 (TYPE_6__*,int ,int) ;
 int ffp_notify_msg3 (TYPE_6__*,int ,scalar_t__,scalar_t__) ;
 TYPE_5__* frame_queue_peek_writable (int *) ;
 int frame_queue_push (int *) ;
 int isnan (double) ;
 int linesize ;
 scalar_t__ llabs (scalar_t__) ;
 int printf (char*,int,double) ;

__attribute__((used)) static int queue_picture(FFPlayer *ffp, AVFrame *src_frame, double pts, double duration, int64_t pos, int serial)
{
    VideoState *is = ffp->is;
    Frame *vp;
    int video_accurate_seek_fail = 0;
    int64_t video_seek_pos = 0;
    int64_t now = 0;
    int64_t deviation = 0;

    int64_t deviation2 = 0;
    int64_t deviation3 = 0;

    if (ffp->enable_accurate_seek && is->video_accurate_seek_req && !is->seek_req) {
        if (!isnan(pts)) {
            video_seek_pos = is->seek_pos;
            is->accurate_seek_vframe_pts = pts * 1000 * 1000;
            deviation = llabs((int64_t)(pts * 1000 * 1000) - is->seek_pos);
            if ((pts * 1000 * 1000 < is->seek_pos) || deviation > MAX_DEVIATION) {
                now = av_gettime_relative() / 1000;
                if (is->drop_vframe_count == 0) {
                    SDL_LockMutex(is->accurate_seek_mutex);
                    if (is->accurate_seek_start_time <= 0 && (is->audio_stream < 0 || is->audio_accurate_seek_req)) {
                        is->accurate_seek_start_time = now;
                    }
                    SDL_UnlockMutex(is->accurate_seek_mutex);
                    av_log(((void*)0), AV_LOG_INFO, "video accurate_seek start, is->seek_pos=%lld, pts=%lf, is->accurate_seek_time = %lld\n", is->seek_pos, pts, is->accurate_seek_start_time);
                }
                is->drop_vframe_count++;

                while (is->audio_accurate_seek_req && !is->abort_request) {
                    int64_t apts = is->accurate_seek_aframe_pts ;
                    deviation2 = apts - pts * 1000 * 1000;
                    deviation3 = apts - is->seek_pos;

                    if (deviation2 > -100 * 1000 && deviation3 < 0) {
                        break;
                    } else {
                        av_usleep(20 * 1000);
                    }
                    now = av_gettime_relative() / 1000;
                    if ((now - is->accurate_seek_start_time) > ffp->accurate_seek_timeout) {
                        break;
                    }
                }

                if ((now - is->accurate_seek_start_time) <= ffp->accurate_seek_timeout) {
                    return 1;
                } else {
                    av_log(((void*)0), AV_LOG_WARNING, "video accurate_seek is error, is->drop_vframe_count=%d, now = %lld, pts = %lf\n", is->drop_vframe_count, now, pts);
                    video_accurate_seek_fail = 1;
                }
            } else {
                av_log(((void*)0), AV_LOG_INFO, "video accurate_seek is ok, is->drop_vframe_count =%d, is->seek_pos=%lld, pts=%lf\n", is->drop_vframe_count, is->seek_pos, pts);
                if (video_seek_pos == is->seek_pos) {
                    is->drop_vframe_count = 0;
                    SDL_LockMutex(is->accurate_seek_mutex);
                    is->video_accurate_seek_req = 0;
                    SDL_CondSignal(is->audio_accurate_seek_cond);
                    if (video_seek_pos == is->seek_pos && is->audio_accurate_seek_req && !is->abort_request) {
                        SDL_CondWaitTimeout(is->video_accurate_seek_cond, is->accurate_seek_mutex, ffp->accurate_seek_timeout);
                    } else {
                        ffp_notify_msg2(ffp, FFP_MSG_ACCURATE_SEEK_COMPLETE, (int)(pts * 1000));
                    }
                    if (video_seek_pos != is->seek_pos && !is->abort_request) {
                        is->video_accurate_seek_req = 1;
                        SDL_UnlockMutex(is->accurate_seek_mutex);
                        return 1;
                    }

                    SDL_UnlockMutex(is->accurate_seek_mutex);
                }
            }
        } else {
            video_accurate_seek_fail = 1;
        }

        if (video_accurate_seek_fail) {
            is->drop_vframe_count = 0;
            SDL_LockMutex(is->accurate_seek_mutex);
            is->video_accurate_seek_req = 0;
            SDL_CondSignal(is->audio_accurate_seek_cond);
            if (is->audio_accurate_seek_req && !is->abort_request) {
                SDL_CondWaitTimeout(is->video_accurate_seek_cond, is->accurate_seek_mutex, ffp->accurate_seek_timeout);
            } else {
                if (!isnan(pts)) {
                    ffp_notify_msg2(ffp, FFP_MSG_ACCURATE_SEEK_COMPLETE, (int)(pts * 1000));
                } else {
                    ffp_notify_msg2(ffp, FFP_MSG_ACCURATE_SEEK_COMPLETE, 0);
                }
            }
            SDL_UnlockMutex(is->accurate_seek_mutex);
        }
        is->accurate_seek_start_time = 0;
        video_accurate_seek_fail = 0;
        is->accurate_seek_vframe_pts = 0;
    }






    if (!(vp = frame_queue_peek_writable(&is->pictq)))
        return -1;

    vp->sar = src_frame->sample_aspect_ratio;





    if (!vp->bmp || !vp->allocated ||
        vp->width != src_frame->width ||
        vp->height != src_frame->height ||
        vp->format != src_frame->format) {

        if (vp->width != src_frame->width || vp->height != src_frame->height)
            ffp_notify_msg3(ffp, FFP_MSG_VIDEO_SIZE_CHANGED, src_frame->width, src_frame->height);

        vp->allocated = 0;
        vp->width = src_frame->width;
        vp->height = src_frame->height;
        vp->format = src_frame->format;



        alloc_picture(ffp, src_frame->format);

        if (is->videoq.abort_request)
            return -1;
    }


    if (vp->bmp) {

        SDL_VoutLockYUVOverlay(vp->bmp);
        if (SDL_VoutFillFrameYUVOverlay(vp->bmp, src_frame) < 0) {
            av_log(((void*)0), AV_LOG_FATAL, "Cannot initialize the conversion context\n");
            exit(1);
        }

        SDL_VoutUnlockYUVOverlay(vp->bmp);

        vp->pts = pts;
        vp->duration = duration;
        vp->pos = pos;
        vp->serial = serial;
        vp->sar = src_frame->sample_aspect_ratio;
        vp->bmp->sar_num = vp->sar.num;
        vp->bmp->sar_den = vp->sar.den;




        frame_queue_push(&is->pictq);
        if (!is->viddec.first_frame_decoded) {
            ALOGD("Video: first frame decoded\n");
            ffp_notify_msg1(ffp, FFP_MSG_VIDEO_DECODED_START);
            is->viddec.first_frame_decoded_time = SDL_GetTickHR();
            is->viddec.first_frame_decoded = 1;
        }
    }
    return 0;
}
