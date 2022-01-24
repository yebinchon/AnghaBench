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
struct TYPE_4__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ SDL_cond ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

SDL_cond *FUNC3(void)
{
    SDL_cond *cond;
    cond = (SDL_cond *) FUNC1(sizeof(SDL_cond));
    if (!cond)
        return NULL;

    if (FUNC2(&cond->id, NULL) != 0) {
        FUNC0(cond);
        return NULL;
    }

    return cond;
}