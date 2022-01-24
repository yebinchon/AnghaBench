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
struct mdesc_handle {unsigned int handle_size; int /*<<< orphan*/  refcnt; void* self_base; int /*<<< orphan*/  list; int /*<<< orphan*/  mdesc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mdesc_handle*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC4(struct mdesc_handle *hp,
			      unsigned int handle_size,
			      void *base)
{
	FUNC0(((unsigned long)&hp->mdesc) & (16UL - 1));

	FUNC2(hp, 0, handle_size);
	FUNC1(&hp->list);
	hp->self_base = base;
	FUNC3(&hp->refcnt, 1);
	hp->handle_size = handle_size;
}