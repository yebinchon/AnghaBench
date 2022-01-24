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
struct TYPE_6__ {TYPE_1__* common; void* opaque; int /*<<< orphan*/ * mutex; } ;
struct TYPE_5__ {int /*<<< orphan*/  fake_fifo; } ;
typedef  int /*<<< orphan*/  SDL_AMediaCodec_Common ;
typedef  TYPE_2__ SDL_AMediaCodec ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 void* FUNC3 (int) ; 

SDL_AMediaCodec *FUNC4(size_t opaque_size)
{
    SDL_AMediaCodec *acodec = (SDL_AMediaCodec*) FUNC3(sizeof(SDL_AMediaCodec));
    if (!acodec)
        return NULL;

    acodec->mutex = FUNC2();
    if (acodec->mutex == NULL)
        goto fail;

    acodec->opaque = FUNC3(opaque_size);
    if (!acodec->opaque)
        goto fail;

    acodec->common = FUNC3(sizeof(SDL_AMediaCodec_Common));
    if (!acodec->common)
        goto fail;

    FUNC0(&acodec->common->fake_fifo);

    return acodec;
fail:
    FUNC1(acodec);
    return NULL;
}