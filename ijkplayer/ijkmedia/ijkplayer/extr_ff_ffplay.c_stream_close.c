
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int abort_request; scalar_t__ audio_stream; scalar_t__ video_stream; scalar_t__ subtitle_stream; struct TYPE_7__* filename; int * handle; scalar_t__ sub_convert_ctx; scalar_t__ img_convert_ctx; int play_mutex; int accurate_seek_mutex; int continue_read_thread; int video_accurate_seek_cond; int audio_accurate_seek_cond; int subpq; int sampq; int pictq; int subtitleq; int audioq; int videoq; int video_refresh_tid; int ic; int read_tid; } ;
typedef TYPE_1__ VideoState ;
struct TYPE_9__ {struct TYPE_9__* img_path; scalar_t__ frame_img_codec_ctx; scalar_t__ frame_img_convert_ctx; } ;
struct TYPE_8__ {TYPE_1__* is; TYPE_5__* get_img_info; scalar_t__ soundtouch_enable; } ;
typedef TYPE_2__ FFPlayer ;


 int AV_LOG_DEBUG ;
 int SDL_DestroyCond (int ) ;
 int SDL_DestroyMutex (int ) ;
 int SDL_WaitThread (int ,int *) ;
 int av_free (TYPE_1__*) ;
 int av_freep (TYPE_5__**) ;
 int av_log (int *,int ,char*) ;
 int avcodec_free_context (scalar_t__*) ;
 int avformat_close_input (int *) ;
 int frame_queue_destory (int *) ;
 int ijk_soundtouch_destroy (int *) ;
 int packet_queue_abort (int *) ;
 int packet_queue_destroy (int *) ;
 int stream_component_close (TYPE_2__*,scalar_t__) ;
 int sws_freeContext (scalar_t__) ;

__attribute__((used)) static void stream_close(FFPlayer *ffp)
{
    VideoState *is = ffp->is;

    is->abort_request = 1;
    packet_queue_abort(&is->videoq);
    packet_queue_abort(&is->audioq);
    av_log(((void*)0), AV_LOG_DEBUG, "wait for read_tid\n");
    SDL_WaitThread(is->read_tid, ((void*)0));


    if (is->audio_stream >= 0)
        stream_component_close(ffp, is->audio_stream);
    if (is->video_stream >= 0)
        stream_component_close(ffp, is->video_stream);
    if (is->subtitle_stream >= 0)
        stream_component_close(ffp, is->subtitle_stream);

    avformat_close_input(&is->ic);

    av_log(((void*)0), AV_LOG_DEBUG, "wait for video_refresh_tid\n");
    SDL_WaitThread(is->video_refresh_tid, ((void*)0));

    packet_queue_destroy(&is->videoq);
    packet_queue_destroy(&is->audioq);
    packet_queue_destroy(&is->subtitleq);


    frame_queue_destory(&is->pictq);
    frame_queue_destory(&is->sampq);
    frame_queue_destory(&is->subpq);
    SDL_DestroyCond(is->audio_accurate_seek_cond);
    SDL_DestroyCond(is->video_accurate_seek_cond);
    SDL_DestroyCond(is->continue_read_thread);
    SDL_DestroyMutex(is->accurate_seek_mutex);
    SDL_DestroyMutex(is->play_mutex);

    sws_freeContext(is->img_convert_ctx);
    if (ffp->get_img_info) {
        if (ffp->get_img_info->frame_img_convert_ctx) {
            sws_freeContext(ffp->get_img_info->frame_img_convert_ctx);
        }
        if (ffp->get_img_info->frame_img_codec_ctx) {
            avcodec_free_context(&ffp->get_img_info->frame_img_codec_ctx);
        }
        av_freep(&ffp->get_img_info->img_path);
        av_freep(&ffp->get_img_info);
    }
    av_free(is->filename);
    av_free(is);
    ffp->is = ((void*)0);
}
