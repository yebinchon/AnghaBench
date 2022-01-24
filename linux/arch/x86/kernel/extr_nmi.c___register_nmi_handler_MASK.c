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
struct nmiaction {int flags; int /*<<< orphan*/  list; int /*<<< orphan*/  irq_work; int /*<<< orphan*/  handler; } ;
struct nmi_desc {int /*<<< orphan*/  lock; int /*<<< orphan*/  head; } ;

/* Variables and functions */
 int EINVAL ; 
 int NMI_FLAG_FIRST ; 
 unsigned int NMI_IO_CHECK ; 
 unsigned int NMI_SERR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nmi_max_handler ; 
 struct nmi_desc* FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC8(unsigned int type, struct nmiaction *action)
{
	struct nmi_desc *desc = FUNC5(type);
	unsigned long flags;

	if (!action->handler)
		return -EINVAL;

	FUNC1(&action->irq_work, nmi_max_handler);

	FUNC6(&desc->lock, flags);

	/*
	 * Indicate if there are multiple registrations on the
	 * internal NMI handler call chains (SERR and IO_CHECK).
	 */
	FUNC0(type == NMI_SERR && !FUNC4(&desc->head));
	FUNC0(type == NMI_IO_CHECK && !FUNC4(&desc->head));

	/*
	 * some handlers need to be executed first otherwise a fake
	 * event confuses some handlers (kdump uses this flag)
	 */
	if (action->flags & NMI_FLAG_FIRST)
		FUNC2(&action->list, &desc->head);
	else
		FUNC3(&action->list, &desc->head);
	
	FUNC7(&desc->lock, flags);
	return 0;
}