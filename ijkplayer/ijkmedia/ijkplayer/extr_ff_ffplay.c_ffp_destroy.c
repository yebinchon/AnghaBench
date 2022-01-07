
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int msg_queue; int vf_mutex; int af_mutex; int meta; int pipeline; int node_vdec; int aout; int vout; int * is; } ;
typedef TYPE_1__ FFPlayer ;


 int AV_LOG_WARNING ;
 int SDL_AoutFreeP (int *) ;
 int SDL_DestroyMutexP (int *) ;
 int SDL_VoutFreeP (int *) ;
 int av_free (TYPE_1__*) ;
 int av_log (int *,int ,char*) ;
 int ffp_reset_internal (TYPE_1__*) ;
 int ffpipeline_free_p (int *) ;
 int ffpipenode_free_p (int *) ;
 int ijkmeta_destroy_p (int *) ;
 int msg_queue_destroy (int *) ;
 int stream_close (TYPE_1__*) ;

void ffp_destroy(FFPlayer *ffp)
{
    if (!ffp)
        return;

    if (ffp->is) {
        av_log(((void*)0), AV_LOG_WARNING, "ffp_destroy_ffplayer: force stream_close()");
        stream_close(ffp);
        ffp->is = ((void*)0);
    }

    SDL_VoutFreeP(&ffp->vout);
    SDL_AoutFreeP(&ffp->aout);
    ffpipenode_free_p(&ffp->node_vdec);
    ffpipeline_free_p(&ffp->pipeline);
    ijkmeta_destroy_p(&ffp->meta);
    ffp_reset_internal(ffp);

    SDL_DestroyMutexP(&ffp->af_mutex);
    SDL_DestroyMutexP(&ffp->vf_mutex);

    msg_queue_destroy(&ffp->msg_queue);


    av_free(ffp);
}
