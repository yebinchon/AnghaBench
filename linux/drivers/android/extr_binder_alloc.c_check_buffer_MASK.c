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
typedef  int /*<<< orphan*/  u32 ;
struct binder_buffer {int /*<<< orphan*/  transaction; int /*<<< orphan*/  allow_user_free; int /*<<< orphan*/  free; } ;
struct binder_alloc {int dummy; } ;
typedef  size_t binder_size_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (size_t,int) ; 
 size_t FUNC1 (struct binder_alloc*,struct binder_buffer*) ; 

__attribute__((used)) static inline bool FUNC2(struct binder_alloc *alloc,
				struct binder_buffer *buffer,
				binder_size_t offset, size_t bytes)
{
	size_t buffer_size = FUNC1(alloc, buffer);

	return buffer_size >= bytes &&
		offset <= buffer_size - bytes &&
		FUNC0(offset, sizeof(u32)) &&
		!buffer->free &&
		(!buffer->allow_user_free || !buffer->transaction);
}