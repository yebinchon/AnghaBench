#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int use_ignores; int /*<<< orphan*/ * ignore_ch; } ;
typedef  TYPE_1__ hashsig_in_progress ;
struct TYPE_7__ {int opt; } ;
typedef  TYPE_2__ git_hashsig ;

/* Variables and functions */
 int GIT_HASHSIG_IGNORE_WHITESPACE ; 
 int GIT_HASHSIG_SMART_WHITESPACE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(
	hashsig_in_progress *prog, git_hashsig *sig)
{
	int i;

	/* no more than one can be set */
	FUNC0(!(sig->opt & GIT_HASHSIG_IGNORE_WHITESPACE) ||
		   !(sig->opt & GIT_HASHSIG_SMART_WHITESPACE));

	if (sig->opt & GIT_HASHSIG_IGNORE_WHITESPACE) {
		for (i = 0; i < 256; ++i)
			prog->ignore_ch[i] = FUNC2(i);
		prog->use_ignores = 1;
	} else if (sig->opt & GIT_HASHSIG_SMART_WHITESPACE) {
		for (i = 0; i < 256; ++i)
			prog->ignore_ch[i] = FUNC1(i);
		prog->use_ignores = 1;
	} else {
		FUNC3(prog, 0, sizeof(*prog));
	}
}