#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct binder_buffer {size_t user_data; int /*<<< orphan*/  entry; } ;
struct binder_alloc {size_t buffer; size_t buffer_size; int /*<<< orphan*/  buffers; } ;
struct TYPE_2__ {size_t user_data; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct binder_buffer*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static size_t FUNC2(struct binder_alloc *alloc,
				       struct binder_buffer *buffer)
{
	if (FUNC1(&buffer->entry, &alloc->buffers))
		return alloc->buffer + alloc->buffer_size - buffer->user_data;
	return FUNC0(buffer)->user_data - buffer->user_data;
}