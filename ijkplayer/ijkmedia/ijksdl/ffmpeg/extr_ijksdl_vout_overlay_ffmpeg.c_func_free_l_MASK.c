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
struct TYPE_7__ {TYPE_1__* opaque; } ;
struct TYPE_6__ {scalar_t__ mutex; scalar_t__ frame_buffer; scalar_t__ linked_frame; scalar_t__ managed_frame; int /*<<< orphan*/  img_convert_ctx; } ;
typedef  TYPE_1__ SDL_VoutOverlay_Opaque ;
typedef  TYPE_2__ SDL_VoutOverlay ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(SDL_VoutOverlay *overlay)
{
    FUNC0("SDL_Overlay(ffmpeg): overlay_free_l(%p)\n", overlay);
    if (!overlay)
        return;

    SDL_VoutOverlay_Opaque *opaque = overlay->opaque;
    if (!opaque)
        return;

    FUNC6(opaque->img_convert_ctx);

    if (opaque->managed_frame)
        FUNC4(&opaque->managed_frame);

    if (opaque->linked_frame) {
        FUNC5(opaque->linked_frame);
        FUNC4(&opaque->linked_frame);
    }

    if (opaque->frame_buffer)
        FUNC3(&opaque->frame_buffer);

    if (opaque->mutex)
        FUNC1(opaque->mutex);

    FUNC2(overlay);
}