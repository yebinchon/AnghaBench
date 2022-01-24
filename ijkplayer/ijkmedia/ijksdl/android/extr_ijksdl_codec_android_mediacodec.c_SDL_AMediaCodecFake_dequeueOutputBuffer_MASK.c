#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_7__ {scalar_t__ (* func_dequeueOutputBuffer ) (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;TYPE_1__* common; } ;
struct TYPE_6__ {int /*<<< orphan*/  fake_fifo; } ;
typedef  int /*<<< orphan*/  SDL_AMediaCodecBufferInfo ;
typedef  TYPE_2__ SDL_AMediaCodec ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__ (*) (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ )) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

ssize_t FUNC4(SDL_AMediaCodec* acodec, SDL_AMediaCodecBufferInfo *info, int64_t timeoutUs)
{    
    if (FUNC1(&acodec->common->fake_fifo) > 0) {
        ssize_t ret = FUNC0(&acodec->common->fake_fifo, info, 0);
        if (ret >= 0)
            return ret;
    }

    FUNC2(acodec->func_dequeueOutputBuffer);
    return acodec->func_dequeueOutputBuffer(acodec, info, timeoutUs);
}