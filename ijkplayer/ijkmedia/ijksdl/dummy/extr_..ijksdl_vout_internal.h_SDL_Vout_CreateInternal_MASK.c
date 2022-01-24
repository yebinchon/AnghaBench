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
struct TYPE_5__ {struct TYPE_5__* opaque; int /*<<< orphan*/ * mutex; } ;
typedef  TYPE_1__ SDL_Vout ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 TYPE_1__* FUNC1 (int,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) inline static SDL_Vout *FUNC3(size_t opaque_size)
{
    SDL_Vout *vout = (SDL_Vout*) FUNC1(1, sizeof(SDL_Vout));
    if (!vout)
        return NULL;

    vout->opaque = FUNC1(1, opaque_size);
    if (!vout->opaque) {
        FUNC2(vout);
        return NULL;
    }

    vout->mutex = FUNC0();
    if (vout->mutex == NULL) {
        FUNC2(vout->opaque);
        FUNC2(vout);
        return NULL;
    }

    return vout;
}