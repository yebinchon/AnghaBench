
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sub; int bmp; int frame; } ;
typedef TYPE_1__ Frame ;


 int SDL_VoutUnrefYUVOverlay (int ) ;
 int av_frame_unref (int ) ;
 int avsubtitle_free (int *) ;

__attribute__((used)) static void frame_queue_unref_item(Frame *vp)
{
    av_frame_unref(vp->frame);
    SDL_VoutUnrefYUVOverlay(vp->bmp);
    avsubtitle_free(&vp->sub);
}
