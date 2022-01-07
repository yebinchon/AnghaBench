
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_8__ {int format; int width; int height; int linesize; int data; } ;
struct TYPE_7__ {TYPE_2__* linked_frame; TYPE_2__* managed_frame; } ;
typedef TYPE_1__ SDL_VoutOverlay_Opaque ;
typedef TYPE_2__ AVFrame ;


 TYPE_2__* av_frame_alloc () ;
 int av_frame_free (TYPE_2__**) ;
 int av_image_fill_arrays (int ,int ,int *,int,int,int,int) ;

__attribute__((used)) static AVFrame *opaque_setup_frame(SDL_VoutOverlay_Opaque* opaque, enum AVPixelFormat format, int width, int height)
{
    AVFrame *managed_frame = av_frame_alloc();
    if (!managed_frame) {
        return ((void*)0);
    }

    AVFrame *linked_frame = av_frame_alloc();
    if (!linked_frame) {
        av_frame_free(&managed_frame);
        return ((void*)0);
    }
    managed_frame->format = format;
    managed_frame->width = width;
    managed_frame->height = height;
    av_image_fill_arrays(managed_frame->data, managed_frame->linesize ,((void*)0),
                         format, width, height, 1);
    opaque->managed_frame = managed_frame;
    opaque->linked_frame = linked_frame;
    return managed_frame;
}
