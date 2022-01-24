#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct binder_buffer {int dummy; } ;
struct binder_alloc {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 struct binder_buffer* FUNC0 (struct binder_alloc*,uintptr_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

struct binder_buffer *FUNC3(struct binder_alloc *alloc,
						   uintptr_t user_ptr)
{
	struct binder_buffer *buffer;

	FUNC1(&alloc->mutex);
	buffer = FUNC0(alloc, user_ptr);
	FUNC2(&alloc->mutex);
	return buffer;
}