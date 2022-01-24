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
struct pg {int status; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  PG_SPIN ; 
 int /*<<< orphan*/  PG_SPIN_DEL ; 
 int STAT_ERR ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,int,int,int,char*) ; 
 int FUNC2 (struct pg*,int) ; 
 int FUNC3 (struct pg*) ; 
 int FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int verbose ; 

__attribute__((used)) static int FUNC7(struct pg *dev, int go, int stop, unsigned long tmo, char *msg)
{
	int j, r, e, s, p, to;

	dev->status = 0;

	j = 0;
	while ((((r = FUNC3(dev)) & go) || (stop && (!(r & stop))))
	       && FUNC5(jiffies, tmo)) {
		if (j++ < PG_SPIN)
			FUNC6(PG_SPIN_DEL);
		else
			FUNC0(1);
	}

	to = FUNC4(jiffies, tmo);

	if ((r & (STAT_ERR & stop)) || to) {
		s = FUNC2(dev, 7);
		e = FUNC2(dev, 1);
		p = FUNC2(dev, 2);
		if (verbose > 1)
			FUNC1("%s: %s: stat=0x%x err=0x%x phase=%d%s\n",
			       dev->name, msg, s, e, p, to ? " timeout" : "");
		if (to)
			e |= 0x100;
		dev->status = (e >> 4) & 0xff;
		return -1;
	}
	return 0;
}