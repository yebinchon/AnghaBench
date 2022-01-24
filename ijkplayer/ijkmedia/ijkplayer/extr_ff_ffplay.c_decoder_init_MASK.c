#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  decode_profiler; scalar_t__ first_frame_decoded; int /*<<< orphan*/  first_frame_decoded_time; int /*<<< orphan*/  start_pts; int /*<<< orphan*/ * empty_queue_cond; int /*<<< orphan*/ * queue; int /*<<< orphan*/ * avctx; } ;
typedef  int /*<<< orphan*/  SDL_cond ;
typedef  int /*<<< orphan*/  PacketQueue ;
typedef  TYPE_1__ Decoder ;
typedef  int /*<<< orphan*/  AVCodecContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_NOPTS_VALUE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(Decoder *d, AVCodecContext *avctx, PacketQueue *queue, SDL_cond *empty_queue_cond) {
    FUNC2(d, 0, sizeof(Decoder));
    d->avctx = avctx;
    d->queue = queue;
    d->empty_queue_cond = empty_queue_cond;
    d->start_pts = AV_NOPTS_VALUE;

    d->first_frame_decoded_time = FUNC0();
    d->first_frame_decoded = 0;

    FUNC1(&d->decode_profiler, -1);
}