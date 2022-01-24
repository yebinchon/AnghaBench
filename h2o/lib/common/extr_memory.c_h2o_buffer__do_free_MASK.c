#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ capacity; int _fd; TYPE_2__* _prototype; } ;
typedef  TYPE_3__ h2o_buffer_t ;
struct TYPE_7__ {scalar_t__ capacity; } ;
struct TYPE_8__ {int /*<<< orphan*/  allocator; TYPE_1__ _initial_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

void FUNC5(h2o_buffer_t *buffer)
{
    /* caller should assert that the buffer is not part of the prototype */
    if (buffer->capacity == buffer->_prototype->_initial_buf.capacity) {
        FUNC2(&buffer->_prototype->allocator, buffer);
    } else if (buffer->_fd != -1) {
        FUNC0(buffer->_fd);
        FUNC3((void *)buffer, FUNC4(buffer->capacity));
    } else {
        FUNC1(buffer);
    }
}