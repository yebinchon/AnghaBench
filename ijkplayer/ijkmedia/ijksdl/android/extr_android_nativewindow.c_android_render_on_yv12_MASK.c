#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int format; } ;
typedef  TYPE_1__ SDL_VoutOverlay ;
typedef  TYPE_1__ const ANativeWindow_Buffer ;

/* Variables and functions */
#define  SDL_FCC_YV12 128 
 int FUNC0 (TYPE_1__ const*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*) ; 

__attribute__((used)) static int FUNC2(ANativeWindow_Buffer *out_buffer, const SDL_VoutOverlay *overlay)
{
    FUNC1(out_buffer);
    FUNC1(overlay);

    switch (overlay->format) {
    case SDL_FCC_YV12: {
        return FUNC0(out_buffer, overlay);
    }
    }

    return -1;
}