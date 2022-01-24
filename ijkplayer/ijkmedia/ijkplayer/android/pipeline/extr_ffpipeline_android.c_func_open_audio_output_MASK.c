#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ opensles; } ;
struct TYPE_7__ {TYPE_1__* opaque; } ;
struct TYPE_6__ {int /*<<< orphan*/  right_volume; int /*<<< orphan*/  left_volume; } ;
typedef  int /*<<< orphan*/  SDL_Aout ;
typedef  TYPE_2__ IJKFF_Pipeline ;
typedef  TYPE_3__ FFPlayer ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static SDL_Aout *FUNC3(IJKFF_Pipeline *pipeline, FFPlayer *ffp)
{
    SDL_Aout *aout = NULL;
    if (ffp->opensles) {
        aout = FUNC1();
    } else {
        aout = FUNC0();
    }
    if (aout)
        FUNC2(aout, pipeline->opaque->left_volume, pipeline->opaque->right_volume);
    return aout;
}