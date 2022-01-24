#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_5__ {int /*<<< orphan*/  (* func_dequeueOutputBuffer ) (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  SDL_AMediaCodecBufferInfo ;
typedef  TYPE_1__ SDL_AMediaCodec ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  (*) (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ )) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

ssize_t FUNC2(SDL_AMediaCodec* acodec, SDL_AMediaCodecBufferInfo *info, int64_t timeoutUs)
{
    FUNC0(acodec->func_dequeueOutputBuffer);
    return acodec->func_dequeueOutputBuffer(acodec, info, timeoutUs);
}