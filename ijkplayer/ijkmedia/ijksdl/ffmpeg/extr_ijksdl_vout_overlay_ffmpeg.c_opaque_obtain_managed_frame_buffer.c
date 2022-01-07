
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int data; } ;
struct TYPE_8__ {int height; int width; int format; int linesize; int data; } ;
struct TYPE_7__ {TYPE_2__* managed_frame; TYPE_3__* frame_buffer; } ;
typedef TYPE_1__ SDL_VoutOverlay_Opaque ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVBufferRef ;


 TYPE_3__* av_buffer_alloc (int) ;
 int av_image_fill_arrays (int ,int ,int ,int ,int ,int ,int) ;
 int av_image_get_buffer_size (int ,int ,int ,int) ;

__attribute__((used)) static AVFrame *opaque_obtain_managed_frame_buffer(SDL_VoutOverlay_Opaque* opaque)
{
    if (opaque->frame_buffer != ((void*)0))
        return opaque->managed_frame;

    AVFrame *managed_frame = opaque->managed_frame;
    int frame_bytes = av_image_get_buffer_size(managed_frame->format, managed_frame->width, managed_frame->height, 1);
    AVBufferRef *frame_buffer_ref = av_buffer_alloc(frame_bytes);
    if (!frame_buffer_ref)
        return ((void*)0);

    av_image_fill_arrays(managed_frame->data, managed_frame->linesize,
                         frame_buffer_ref->data, managed_frame->format, managed_frame->width, managed_frame->height, 1);
    opaque->frame_buffer = frame_buffer_ref;
    return opaque->managed_frame;
}
