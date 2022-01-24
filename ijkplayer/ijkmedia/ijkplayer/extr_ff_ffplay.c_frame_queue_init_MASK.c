#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int max_size; int keep_last; TYPE_1__* queue; int /*<<< orphan*/ * pktq; int /*<<< orphan*/  cond; int /*<<< orphan*/  mutex; } ;
struct TYPE_5__ {int /*<<< orphan*/  frame; } ;
typedef  int /*<<< orphan*/  PacketQueue ;
typedef  TYPE_2__ FrameQueue ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_FATAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FRAME_QUEUE_SIZE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(FrameQueue *f, PacketQueue *pktq, int max_size, int keep_last)
{
    int i;
    FUNC7(f, 0, sizeof(FrameQueue));
    if (!(f->mutex = FUNC3())) {
        FUNC6(NULL, AV_LOG_FATAL, "SDL_CreateMutex(): %s\n", FUNC4());
        return FUNC0(ENOMEM);
    }
    if (!(f->cond = FUNC2())) {
        FUNC6(NULL, AV_LOG_FATAL, "SDL_CreateCond(): %s\n", FUNC4());
        return FUNC0(ENOMEM);
    }
    f->pktq = pktq;
    f->max_size = FUNC1(max_size, FRAME_QUEUE_SIZE);
    f->keep_last = !!keep_last;
    for (i = 0; i < f->max_size; i++)
        if (!(f->queue[i].frame = FUNC5()))
            return FUNC0(ENOMEM);
    return 0;
}