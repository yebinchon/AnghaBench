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
typedef  TYPE_1__ SDL_Aout ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (size_t) ; 

__attribute__((used)) inline static SDL_Aout *FUNC3(size_t opaque_size)
{
    SDL_Aout *aout = (SDL_Aout*) FUNC2(sizeof(SDL_Aout));
    if (!aout)
        return NULL;

    aout->opaque = FUNC2(opaque_size);
    if (!aout->opaque) {
        FUNC1(aout);
        return NULL;
    }

    aout->mutex = FUNC0();
    if (aout->mutex == NULL) {
        FUNC1(aout->opaque);
        FUNC1(aout);
        return NULL;
    }

    return aout;
}