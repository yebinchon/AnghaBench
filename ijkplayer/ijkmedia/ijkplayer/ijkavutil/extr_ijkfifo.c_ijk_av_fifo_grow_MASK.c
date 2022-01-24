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
struct TYPE_5__ {unsigned int end; unsigned int buffer; } ;
typedef  TYPE_1__ IjkFifoBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,int) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 

int FUNC3(IjkFifoBuffer *f, unsigned int size)
{
    unsigned int old_size = f->end - f->buffer;
    if(size + (unsigned)FUNC2(f) < size)
        return -1;

    size += FUNC2(f);

    if (old_size < size)
        return FUNC1(f, FUNC0(size, 2*old_size));
    return 0;
}