
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int meta; int * av_class; void* vf_mutex; void* af_mutex; int msg_queue; } ;
typedef TYPE_1__ FFPlayer ;


 int AV_LOG_INFO ;
 void* SDL_CreateMutex () ;
 int av_log (int *,int ,char*,int ) ;
 scalar_t__ av_mallocz (int) ;
 int av_opt_set_defaults (TYPE_1__*) ;
 int av_version_info () ;
 int ffp_context_class ;
 int ffp_reset_internal (TYPE_1__*) ;
 int ijk_version_info () ;
 int ijkmeta_create () ;
 int msg_queue_init (int *) ;

FFPlayer *ffp_create()
{
    av_log(((void*)0), AV_LOG_INFO, "av_version_info: %s\n", av_version_info());
    av_log(((void*)0), AV_LOG_INFO, "ijk_version_info: %s\n", ijk_version_info());

    FFPlayer* ffp = (FFPlayer*) av_mallocz(sizeof(FFPlayer));
    if (!ffp)
        return ((void*)0);

    msg_queue_init(&ffp->msg_queue);
    ffp->af_mutex = SDL_CreateMutex();
    ffp->vf_mutex = SDL_CreateMutex();

    ffp_reset_internal(ffp);
    ffp->av_class = &ffp_context_class;
    ffp->meta = ijkmeta_create();

    av_opt_set_defaults(ffp);

    return ffp;
}
