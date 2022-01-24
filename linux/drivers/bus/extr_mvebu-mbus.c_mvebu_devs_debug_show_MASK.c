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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u64 ;
typedef  int u32 ;
struct seq_file {int dummy; } ;
struct mvebu_mbus_state {TYPE_1__* soc; } ;
struct TYPE_2__ {int num_wins; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct mvebu_mbus_state mbus_state ; 
 int /*<<< orphan*/  FUNC1 (struct mvebu_mbus_state*,int,int*,int*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC2 (struct mvebu_mbus_state*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*) ; 

__attribute__((used)) static int FUNC5(struct seq_file *seq, void *v)
{
	struct mvebu_mbus_state *mbus = &mbus_state;
	int win;

	for (win = 0; win < mbus->soc->num_wins; win++) {
		u64 wbase, wremap;
		u32 wsize;
		u8 wtarget, wattr;
		int enabled;

		FUNC1(mbus, win,
				       &enabled, &wbase, &wsize,
				       &wtarget, &wattr, &wremap);

		if (!enabled) {
			FUNC3(seq, "[%02d] disabled\n", win);
			continue;
		}

		FUNC3(seq, "[%02d] %016llx - %016llx : %04x:%04x",
			   win, (unsigned long long)wbase,
			   (unsigned long long)(wbase + wsize), wtarget, wattr);

		if (!FUNC0(wsize) ||
		    ((wbase & (u64)(wsize - 1)) != 0))
			FUNC4(seq, " (Invalid base/size!!)");

		if (FUNC2(mbus, win)) {
			FUNC3(seq, " (remap %016llx)\n",
				   (unsigned long long)wremap);
		} else
			FUNC3(seq, "\n");
	}

	return 0;
}