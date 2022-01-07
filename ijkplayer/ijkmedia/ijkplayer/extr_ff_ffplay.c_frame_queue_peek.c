
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t rindex; size_t rindex_shown; size_t max_size; int * queue; } ;
typedef TYPE_1__ FrameQueue ;
typedef int Frame ;



__attribute__((used)) static Frame *frame_queue_peek(FrameQueue *f)
{
    return &f->queue[(f->rindex + f->rindex_shown) % f->max_size];
}
