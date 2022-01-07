
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * linesize; int * data; } ;
struct TYPE_5__ {int planes; int * pitches; int * pixels; } ;
typedef TYPE_1__ SDL_VoutOverlay ;
typedef TYPE_2__ AVFrame ;


 int AV_NUM_DATA_POINTERS ;

__attribute__((used)) static void overlay_fill(SDL_VoutOverlay *overlay, AVFrame *frame, int planes)
{
    overlay->planes = planes;

    for (int i = 0; i < AV_NUM_DATA_POINTERS; ++i) {
        overlay->pixels[i] = frame->data[i];
        overlay->pitches[i] = frame->linesize[i];
    }
}
