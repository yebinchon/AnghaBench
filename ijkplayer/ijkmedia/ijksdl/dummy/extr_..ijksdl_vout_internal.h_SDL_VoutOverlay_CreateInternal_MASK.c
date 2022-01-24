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
struct TYPE_4__ {scalar_t__ opaque; } ;
typedef  TYPE_1__ SDL_VoutOverlay ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) inline static SDL_VoutOverlay *FUNC2(size_t opaque_size)
{
    SDL_VoutOverlay *overlay = (SDL_VoutOverlay*) FUNC0(1, sizeof(SDL_VoutOverlay));
    if (!overlay)
        return NULL;

    overlay->opaque = FUNC0(1, opaque_size);
    if (!overlay->opaque) {
        FUNC1(overlay);
        return NULL;
    }
    return overlay;
}