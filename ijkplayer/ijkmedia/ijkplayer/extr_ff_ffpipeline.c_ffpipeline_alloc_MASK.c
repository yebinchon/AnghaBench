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
struct TYPE_4__ {scalar_t__ opaque; int /*<<< orphan*/ * opaque_class; } ;
typedef  int /*<<< orphan*/  SDL_Class ;
typedef  TYPE_1__ IJKFF_Pipeline ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

IJKFF_Pipeline *FUNC2(SDL_Class *opaque_class, size_t opaque_size)
{
    IJKFF_Pipeline *pipeline = (IJKFF_Pipeline*) FUNC0(1, sizeof(IJKFF_Pipeline));
    if (!pipeline)
        return NULL;

    pipeline->opaque_class = opaque_class;
    pipeline->opaque       = FUNC0(1, opaque_size);
    if (!pipeline->opaque) {
        FUNC1(pipeline);
        return NULL;
    }

    return pipeline;
}