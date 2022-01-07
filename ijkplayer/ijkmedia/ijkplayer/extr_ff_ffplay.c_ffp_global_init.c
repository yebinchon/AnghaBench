
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int * data; } ;


 int ALOGD (char*,int ) ;
 int av_init_packet (TYPE_1__*) ;
 int av_lockmgr_register (int ) ;
 int av_log_set_callback (int ) ;
 int av_register_all () ;
 int avcodec_register_all () ;
 int avdevice_register_all () ;
 int avfilter_register_all () ;
 int avformat_network_init () ;
 int ffp_log_callback_brief ;
 TYPE_1__ flush_pkt ;
 int g_ffmpeg_global_inited ;
 int ijkav_register_all () ;
 int ijkmp_version () ;
 int lockmgr ;

void ffp_global_init()
{
    if (g_ffmpeg_global_inited)
        return;

    ALOGD("ijkmediaplayer version : %s", ijkmp_version());

    avcodec_register_all();






    av_register_all();

    ijkav_register_all();

    avformat_network_init();

    av_lockmgr_register(lockmgr);
    av_log_set_callback(ffp_log_callback_brief);

    av_init_packet(&flush_pkt);
    flush_pkt.data = (uint8_t *)&flush_pkt;

    g_ffmpeg_global_inited = 1;
}
