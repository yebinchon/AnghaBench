
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int decode_profiler; scalar_t__ first_frame_decoded; int first_frame_decoded_time; int start_pts; int * empty_queue_cond; int * queue; int * avctx; } ;
typedef int SDL_cond ;
typedef int PacketQueue ;
typedef TYPE_1__ Decoder ;
typedef int AVCodecContext ;


 int AV_NOPTS_VALUE ;
 int SDL_GetTickHR () ;
 int SDL_ProfilerReset (int *,int) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void decoder_init(Decoder *d, AVCodecContext *avctx, PacketQueue *queue, SDL_cond *empty_queue_cond) {
    memset(d, 0, sizeof(Decoder));
    d->avctx = avctx;
    d->queue = queue;
    d->empty_queue_cond = empty_queue_cond;
    d->start_pts = AV_NOPTS_VALUE;

    d->first_frame_decoded_time = SDL_GetTickHR();
    d->first_frame_decoded = 0;

    SDL_ProfilerReset(&d->decode_profiler, -1);
}
