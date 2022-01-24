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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_4__ {scalar_t__ capacity; scalar_t__ off; int is_allocated; int /*<<< orphan*/ * base; } ;
typedef  TYPE_1__ ptls_buffer_t ;

/* Variables and functions */
 int PTLS_ERROR_NO_MEMORY ; 
 scalar_t__ PTLS_MEMORY_DEBUG ; 
 int /*<<< orphan*/ * FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

int FUNC3(ptls_buffer_t *buf, size_t delta)
{
    if (buf->base == NULL)
        return PTLS_ERROR_NO_MEMORY;

    if (PTLS_MEMORY_DEBUG || buf->capacity < buf->off + delta) {
        uint8_t *newp;
        size_t new_capacity = buf->capacity;
        if (new_capacity < 1024)
            new_capacity = 1024;
        while (new_capacity < buf->off + delta) {
            new_capacity *= 2;
        }
        if ((newp = FUNC0(new_capacity)) == NULL)
            return PTLS_ERROR_NO_MEMORY;
        FUNC1(newp, buf->base, buf->off);
        FUNC2(buf);
        buf->base = newp;
        buf->capacity = new_capacity;
        buf->is_allocated = 1;
    }

    return 0;
}