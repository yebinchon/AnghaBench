
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AV_LOG_INFO ;
 int IJK_REGISTER_DEMUXER (int ) ;
 int IJK_REGISTER_PROTOCOL (int ) ;
 int async ;
 int av_log (int *,int ,char*) ;
 int av_register_all () ;
 int ijkhttphook ;
 int ijkio ;
 int ijklivehook ;
 int ijklongurl ;
 int ijkmediadatasource ;
 int ijksegment ;
 int ijktcphook ;

void ijkav_register_all(void)
{
    static int initialized;

    if (initialized)
        return;
    initialized = 1;

    av_register_all();


    av_log(((void*)0), AV_LOG_INFO, "===== custom modules begin =====\n");



    IJK_REGISTER_PROTOCOL(ijkio);
    IJK_REGISTER_PROTOCOL(async);
    IJK_REGISTER_PROTOCOL(ijklongurl);
    IJK_REGISTER_PROTOCOL(ijktcphook);
    IJK_REGISTER_PROTOCOL(ijkhttphook);
    IJK_REGISTER_PROTOCOL(ijksegment);

    IJK_REGISTER_DEMUXER(ijklivehook);
    av_log(((void*)0), AV_LOG_INFO, "===== custom modules end =====\n");
}
