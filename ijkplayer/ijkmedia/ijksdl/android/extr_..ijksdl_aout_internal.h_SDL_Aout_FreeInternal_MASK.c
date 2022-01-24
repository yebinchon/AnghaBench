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
struct TYPE_5__ {struct TYPE_5__* opaque; scalar_t__ mutex; } ;
typedef  TYPE_1__ SDL_Aout ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) inline static void FUNC3(SDL_Aout *aout)
{
    if (!aout)
        return;

    if (aout->mutex) {
        FUNC0(aout->mutex);
    }

    FUNC1(aout->opaque);
    FUNC2(aout, 0, sizeof(SDL_Aout));
    FUNC1(aout);
}