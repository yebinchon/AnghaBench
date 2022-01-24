#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  mutex; TYPE_1__* opaque; } ;
struct TYPE_4__ {int /*<<< orphan*/ * acodec; } ;
typedef  TYPE_1__ SDL_Vout_Opaque ;
typedef  TYPE_2__ SDL_Vout ;
typedef  int /*<<< orphan*/  SDL_AMediaCodec ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

SDL_AMediaCodec *FUNC2(SDL_Vout *vout)
{
    SDL_Vout_Opaque *opaque = vout->opaque;
    SDL_AMediaCodec *acodec = NULL;

    FUNC0(vout->mutex);
    acodec = opaque->acodec;
    FUNC1(vout->mutex);
    return acodec;
}