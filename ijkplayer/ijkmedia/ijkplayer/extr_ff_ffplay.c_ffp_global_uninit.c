
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int av_lockmgr_register (int *) ;
 int avformat_network_deinit () ;
 int g_ffmpeg_global_inited ;

void ffp_global_uninit()
{
    if (!g_ffmpeg_global_inited)
        return;

    av_lockmgr_register(((void*)0));



    avformat_network_deinit();

    g_ffmpeg_global_inited = 0;
}
