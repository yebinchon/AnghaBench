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
struct pt_unit {int /*<<< orphan*/  name; struct pi_adapter* pi; } ;
struct pi_adapter {int dummy; } ;

/* Variables and functions */
 int PT_SPIN ; 
 int /*<<< orphan*/  PT_SPIN_DEL ; 
 int STAT_ERR ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*,char*,int,int,int,int,int) ; 
 int FUNC1 (struct pi_adapter*,int) ; 
 int FUNC2 (struct pi_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct pt_unit *tape, int go, int stop, char *fun, char *msg)
{
	int j, r, e, s, p;
	struct pi_adapter *pi = tape->pi;

	j = 0;
	while ((((r = FUNC2(pi)) & go) || (stop && (!(r & stop))))
	       && (j++ < PT_SPIN))
		FUNC3(PT_SPIN_DEL);

	if ((r & (STAT_ERR & stop)) || (j > PT_SPIN)) {
		s = FUNC1(pi, 7);
		e = FUNC1(pi, 1);
		p = FUNC1(pi, 2);
		if (j > PT_SPIN)
			e |= 0x100;
		if (fun)
			FUNC0("%s: %s %s: alt=0x%x stat=0x%x err=0x%x"
			       " loop=%d phase=%d\n",
			       tape->name, fun, msg, r, s, e, j, p);
		return (e << 8) + s;
	}
	return 0;
}