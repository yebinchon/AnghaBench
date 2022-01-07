
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; int rindex_shown; } ;
typedef TYPE_1__ FrameQueue ;



__attribute__((used)) static int frame_queue_nb_remaining(FrameQueue *f)
{
    return f->size - f->rindex_shown;
}
