
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int frame; } ;
struct TYPE_6__ {int max_size; int cond; int mutex; TYPE_2__* queue; } ;
typedef TYPE_1__ FrameQueue ;
typedef TYPE_2__ Frame ;


 int SDL_DestroyCond (int ) ;
 int SDL_DestroyMutex (int ) ;
 int av_frame_free (int *) ;
 int frame_queue_unref_item (TYPE_2__*) ;
 int free_picture (TYPE_2__*) ;

__attribute__((used)) static void frame_queue_destory(FrameQueue *f)
{
    int i;
    for (i = 0; i < f->max_size; i++) {
        Frame *vp = &f->queue[i];
        frame_queue_unref_item(vp);
        av_frame_free(&vp->frame);
        free_picture(vp);
    }
    SDL_DestroyMutex(f->mutex);
    SDL_DestroyCond(f->cond);
}
