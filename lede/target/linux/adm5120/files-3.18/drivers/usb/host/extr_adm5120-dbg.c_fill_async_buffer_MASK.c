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
struct debug_buffer {int /*<<< orphan*/  page; struct admhcd* ahcd; } ;
struct admhcd {int /*<<< orphan*/  lock; int /*<<< orphan*/  ed_head; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 size_t FUNC0 (struct admhcd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static ssize_t FUNC3(struct debug_buffer *buf)
{
	struct admhcd		*ahcd;
	size_t			temp;
	unsigned long		flags;

	ahcd = buf->ahcd;

	FUNC1(&ahcd->lock, flags);
	temp = FUNC0(ahcd, buf->page, PAGE_SIZE, ahcd->ed_head);
	FUNC2(&ahcd->lock, flags);

	return temp;
}