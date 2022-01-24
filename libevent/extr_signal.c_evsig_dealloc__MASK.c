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
struct TYPE_2__ {int sh_old_max; int* ev_signal_pair; int /*<<< orphan*/ ** sh_old; int /*<<< orphan*/  ev_signal; scalar_t__ ev_signal_added; } ;
struct event_base {TYPE_1__ sig; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int NSIG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct event_base* evsig_base ; 
 int evsig_base_fd ; 
 scalar_t__ evsig_base_n_signals_added ; 
 int /*<<< orphan*/  FUNC4 (struct event_base*,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **) ; 

void
FUNC7(struct event_base *base)
{
	int i = 0;
	if (base->sig.ev_signal_added) {
		FUNC3(&base->sig.ev_signal);
		base->sig.ev_signal_added = 0;
	}
	/* debug event is created in evsig_init_/event_assign even when
	 * ev_signal_added == 0, so unassign is required */
	FUNC2(&base->sig.ev_signal);

	for (i = 0; i < NSIG; ++i) {
		if (i < base->sig.sh_old_max && base->sig.sh_old[i] != NULL)
			FUNC4(base, i);
	}
	FUNC0();
	if (base == evsig_base) {
		evsig_base = NULL;
		evsig_base_n_signals_added = 0;
		evsig_base_fd = -1;
	}
	FUNC1();

	if (base->sig.ev_signal_pair[0] != -1) {
		FUNC5(base->sig.ev_signal_pair[0]);
		base->sig.ev_signal_pair[0] = -1;
	}
	if (base->sig.ev_signal_pair[1] != -1) {
		FUNC5(base->sig.ev_signal_pair[1]);
		base->sig.ev_signal_pair[1] = -1;
	}
	base->sig.sh_old_max = 0;

	/* per index frees are handled in evsig_del() */
	if (base->sig.sh_old) {
		FUNC6(base->sig.sh_old);
		base->sig.sh_old = NULL;
	}
}