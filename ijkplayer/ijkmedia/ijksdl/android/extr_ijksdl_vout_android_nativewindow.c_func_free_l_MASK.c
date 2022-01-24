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
struct TYPE_6__ {TYPE_1__* opaque; } ;
struct TYPE_5__ {int /*<<< orphan*/  acodec; int /*<<< orphan*/  egl; int /*<<< orphan*/ * native_window; int /*<<< orphan*/  overlay_manager; int /*<<< orphan*/  overlay_pool; } ;
typedef  TYPE_1__ SDL_Vout_Opaque ;
typedef  TYPE_2__ SDL_Vout ;
typedef  int /*<<< orphan*/  SDL_AMediaCodecBufferProxy ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC8(SDL_Vout *vout)
{
    if (!vout)
        return;

    SDL_Vout_Opaque *opaque = vout->opaque;
    if (opaque) {
        SDL_AMediaCodecBufferProxy **begin = (SDL_AMediaCodecBufferProxy **)FUNC2(&opaque->overlay_manager);
        SDL_AMediaCodecBufferProxy **end   = (SDL_AMediaCodecBufferProxy **)FUNC4(&opaque->overlay_manager);
        for (; begin < end; ++begin) {
            FUNC5(begin);
        }
        FUNC3(&opaque->overlay_pool);
        FUNC3(&opaque->overlay_manager);

        if (opaque->native_window) {
            FUNC0(opaque->native_window);
            opaque->native_window = NULL;
        }

        FUNC1(&opaque->egl);

        FUNC6(&opaque->acodec);
    }

    FUNC7(vout);
}