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
struct TYPE_5__ {TYPE_1__* opaque; } ;
struct TYPE_4__ {int abort_request; int /*<<< orphan*/ * audio_tid; int /*<<< orphan*/  wakeup_mutex; int /*<<< orphan*/  wakeup_cond; } ;
typedef  TYPE_1__ SDL_Aout_Opaque ;
typedef  TYPE_2__ SDL_Aout ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(SDL_Aout *aout)
{
    SDL_Aout_Opaque *opaque = aout->opaque;

    FUNC1(opaque->wakeup_mutex);
    opaque->abort_request = true;
    FUNC0(opaque->wakeup_cond);
    FUNC2(opaque->wakeup_mutex);

    FUNC3(opaque->audio_tid, NULL);

    opaque->audio_tid = NULL;
}