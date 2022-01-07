
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int seek_by_bytes; int fast; int decoder_reorder_pts; int loop; int infinite_buffer; double rdftspeed; int autorotate; int find_stream_info; int start_on_prepared; int sync_av_start; int packet_buffering; int max_fps; float pf_playback_rate; float pf_playback_volume; int dcc; int stat; int * ijkio_inject_opaque; int * inject_opaque; int msg_queue; int ijkio_manager_ctx; int app_ctx; scalar_t__ pf_playback_volume_changed; scalar_t__ pf_playback_rate_changed; scalar_t__ af_changed; scalar_t__ vf_changed; int vdps_sampler; int vfps_sampler; int meta; scalar_t__ render_wait_start; scalar_t__ ijkmeta_delay_init; int * mediacodec_default_name; int * video_mime_type; scalar_t__ async_init_decoder; scalar_t__ no_time_adjust; int * iformat_name; scalar_t__ soundtouch_enable; scalar_t__ opensles; scalar_t__ mediacodec_auto_rotate; scalar_t__ mediacodec_handle_resolution_change; scalar_t__ mediacodec_mpeg2; scalar_t__ mediacodec_hevc; scalar_t__ mediacodec_avc; scalar_t__ mediacodec_all_videos; scalar_t__ vtb_wait_async; scalar_t__ vtb_handle_resolution_change; scalar_t__ vtb_async; scalar_t__ vtb_max_frame_width; scalar_t__ videotoolbox; int pictq_size; scalar_t__ playable_duration_ms; int accurate_seek_timeout; scalar_t__ enable_accurate_seek; scalar_t__ first_video_frame_rendered; scalar_t__ error_count; scalar_t__ error; scalar_t__ auto_resume; scalar_t__ prepared; scalar_t__ last_error; int overlay_format; int subtitle_codec_info; int audio_codec_info; int video_codec_info; scalar_t__ sar_den; scalar_t__ sar_num; int * node_vdec; int * pipeline; int * vout; int * aout; scalar_t__ audio_callback_time; int sws_flags; int * vfilter0; int * afilters; scalar_t__ nb_vfilters; int vfilters_list; int video_codec_name; int audio_codec_name; int show_mode; scalar_t__ seek_at_start; scalar_t__ framedrop; scalar_t__ autoexit; scalar_t__ lowres; scalar_t__ genpts; void* duration; void* start_time; int av_sync_type; scalar_t__ show_status; scalar_t__ display_disable; int wanted_stream_spec; scalar_t__ video_disable; scalar_t__ audio_disable; int input_filename; int swr_preset_opts; int swr_opts; int player_opts; int sws_dict; int codec_opts; int format_opts; } ;
typedef TYPE_1__ FFPlayer ;


 void* AV_NOPTS_VALUE ;
 int AV_SYNC_AUDIO_MASTER ;
 int MAX_ACCURATE_SEEK_TIMEOUT ;
 int SDL_FCC_RV32 ;
 int SDL_SpeedSamplerReset (int *) ;
 int SHOW_MODE_NONE ;
 int SWS_FAST_BILINEAR ;
 int VIDEO_PICTURE_QUEUE_SIZE_DEFAULT ;
 int av_application_closep (int *) ;
 int av_dict_free (int *) ;
 int av_freep (int *) ;
 int av_opt_free (TYPE_1__*) ;
 int ffp_reset_demux_cache_control (int *) ;
 int ffp_reset_statistic (int *) ;
 int ijkio_manager_destroyp (int *) ;
 int ijkmeta_reset (int ) ;
 int memset (int ,int ,int) ;
 int msg_queue_flush (int *) ;

__attribute__((used)) inline static void ffp_reset_internal(FFPlayer *ffp)
{

    av_opt_free(ffp);


    av_dict_free(&ffp->format_opts);
    av_dict_free(&ffp->codec_opts);
    av_dict_free(&ffp->sws_dict);
    av_dict_free(&ffp->player_opts);
    av_dict_free(&ffp->swr_opts);
    av_dict_free(&ffp->swr_preset_opts);


    av_freep(&ffp->input_filename);
    ffp->audio_disable = 0;
    ffp->video_disable = 0;
    memset(ffp->wanted_stream_spec, 0, sizeof(ffp->wanted_stream_spec));
    ffp->seek_by_bytes = -1;
    ffp->display_disable = 0;
    ffp->show_status = 0;
    ffp->av_sync_type = AV_SYNC_AUDIO_MASTER;
    ffp->start_time = AV_NOPTS_VALUE;
    ffp->duration = AV_NOPTS_VALUE;
    ffp->fast = 1;
    ffp->genpts = 0;
    ffp->lowres = 0;
    ffp->decoder_reorder_pts = -1;
    ffp->autoexit = 0;
    ffp->loop = 1;
    ffp->framedrop = 0;
    ffp->seek_at_start = 0;
    ffp->infinite_buffer = -1;
    ffp->show_mode = SHOW_MODE_NONE;
    av_freep(&ffp->audio_codec_name);
    av_freep(&ffp->video_codec_name);
    ffp->rdftspeed = 0.02;






    ffp->autorotate = 1;
    ffp->find_stream_info = 1;

    ffp->sws_flags = SWS_FAST_BILINEAR;


    ffp->audio_callback_time = 0;


    ffp->aout = ((void*)0);
    ffp->vout = ((void*)0);
    ffp->pipeline = ((void*)0);
    ffp->node_vdec = ((void*)0);
    ffp->sar_num = 0;
    ffp->sar_den = 0;

    av_freep(&ffp->video_codec_info);
    av_freep(&ffp->audio_codec_info);
    av_freep(&ffp->subtitle_codec_info);
    ffp->overlay_format = SDL_FCC_RV32;

    ffp->last_error = 0;
    ffp->prepared = 0;
    ffp->auto_resume = 0;
    ffp->error = 0;
    ffp->error_count = 0;
    ffp->start_on_prepared = 1;
    ffp->first_video_frame_rendered = 0;
    ffp->sync_av_start = 1;
    ffp->enable_accurate_seek = 0;
    ffp->accurate_seek_timeout = MAX_ACCURATE_SEEK_TIMEOUT;

    ffp->playable_duration_ms = 0;

    ffp->packet_buffering = 1;
    ffp->pictq_size = VIDEO_PICTURE_QUEUE_SIZE_DEFAULT;
    ffp->max_fps = 31;

    ffp->videotoolbox = 0;
    ffp->vtb_max_frame_width = 0;
    ffp->vtb_async = 0;
    ffp->vtb_handle_resolution_change = 0;
    ffp->vtb_wait_async = 0;

    ffp->mediacodec_all_videos = 0;
    ffp->mediacodec_avc = 0;
    ffp->mediacodec_hevc = 0;
    ffp->mediacodec_mpeg2 = 0;
    ffp->mediacodec_handle_resolution_change = 0;
    ffp->mediacodec_auto_rotate = 0;

    ffp->opensles = 0;
    ffp->soundtouch_enable = 0;

    ffp->iformat_name = ((void*)0);

    ffp->no_time_adjust = 0;
    ffp->async_init_decoder = 0;
    ffp->video_mime_type = ((void*)0);
    ffp->mediacodec_default_name = ((void*)0);
    ffp->ijkmeta_delay_init = 0;
    ffp->render_wait_start = 0;

    ijkmeta_reset(ffp->meta);

    SDL_SpeedSamplerReset(&ffp->vfps_sampler);
    SDL_SpeedSamplerReset(&ffp->vdps_sampler);


    ffp->vf_changed = 0;
    ffp->af_changed = 0;
    ffp->pf_playback_rate = 1.0f;
    ffp->pf_playback_rate_changed = 0;
    ffp->pf_playback_volume = 1.0f;
    ffp->pf_playback_volume_changed = 0;

    av_application_closep(&ffp->app_ctx);
    ijkio_manager_destroyp(&ffp->ijkio_manager_ctx);

    msg_queue_flush(&ffp->msg_queue);

    ffp->inject_opaque = ((void*)0);
    ffp->ijkio_inject_opaque = ((void*)0);
    ffp_reset_statistic(&ffp->stat);
    ffp_reset_demux_cache_control(&ffp->dcc);
}
