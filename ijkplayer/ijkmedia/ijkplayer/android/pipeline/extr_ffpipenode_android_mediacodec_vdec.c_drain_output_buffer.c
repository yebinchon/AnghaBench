
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_6__ {TYPE_1__* opaque; } ;
struct TYPE_5__ {int acodec_mutex; int acodec_cond; scalar_t__ acodec_reconfigure_request; scalar_t__ acodec_flush_request; } ;
typedef int JNIEnv ;
typedef TYPE_1__ IJKFF_Pipenode_Opaque ;
typedef TYPE_2__ IJKFF_Pipenode ;
typedef int AVFrame ;


 int SDL_CondWaitTimeout (int ,int ,int) ;
 int SDL_LockMutex (int ) ;
 int SDL_UnlockMutex (int ) ;
 int drain_output_buffer_l (int *,TYPE_2__*,int ,int*,int *,int*) ;

__attribute__((used)) static int drain_output_buffer(JNIEnv *env, IJKFF_Pipenode *node, int64_t timeUs, int *dequeue_count, AVFrame *frame, int *got_frame)
{
    IJKFF_Pipenode_Opaque *opaque = node->opaque;
    SDL_LockMutex(opaque->acodec_mutex);

    if (opaque->acodec_flush_request || opaque->acodec_reconfigure_request) {


        SDL_CondWaitTimeout(opaque->acodec_cond, opaque->acodec_mutex, 100);
    }

    int ret = drain_output_buffer_l(env, node, timeUs, dequeue_count, frame, got_frame);
    SDL_UnlockMutex(opaque->acodec_mutex);
    return ret;
}
