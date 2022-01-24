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
struct sigchain_signal {int n; int /*<<< orphan*/ * old; } ;

/* Variables and functions */
 scalar_t__ SIG_ERR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct sigchain_signal* signals ; 

int FUNC2(int sig)
{
	struct sigchain_signal *s = signals + sig;
	FUNC0(sig);
	if (s->n < 1)
		return 0;

	if (FUNC1(sig, s->old[s->n - 1]) == SIG_ERR)
		return -1;
	s->n--;
	return 0;
}