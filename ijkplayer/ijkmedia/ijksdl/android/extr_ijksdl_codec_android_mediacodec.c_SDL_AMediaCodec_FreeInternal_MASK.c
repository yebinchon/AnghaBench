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
struct TYPE_5__ {scalar_t__ mutex; struct TYPE_5__* opaque; struct TYPE_5__* common; int /*<<< orphan*/  fake_fifo; } ;
typedef  TYPE_1__ SDL_AMediaCodec ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void FUNC4(SDL_AMediaCodec *acodec)
{
    if (!acodec)
        return;

    if (acodec->common) {
        FUNC0(&acodec->common->fake_fifo);
        FUNC2(acodec->common);
    }

    FUNC2(acodec->opaque);

    if (acodec->mutex)
        FUNC1(&acodec->mutex);

    FUNC3(acodec, 0, sizeof(SDL_AMediaCodec));
    FUNC2(acodec);
}