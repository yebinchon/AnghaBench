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

/* Variables and functions */
 int /*<<< orphan*/  A ; 
 int /*<<< orphan*/  B ; 
#define  EAD_TYPE_GET_PRIME 130 
#define  EAD_TYPE_SEND_A 129 
#define  EAD_TYPE_SET_USERNAME 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  skey ; 
 int state ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tce ; 
 int /*<<< orphan*/  tpe ; 
 int /*<<< orphan*/ * ts ; 

__attribute__((used)) static void
FUNC6(int nstate)
{
	if (state == nstate)
		return;

	if (nstate < state) {
		if ((nstate < EAD_TYPE_GET_PRIME) &&
			(state >= EAD_TYPE_GET_PRIME)) {
			FUNC2(ts);
			ts = NULL;
		}
		goto done;
	}

	switch(state) {
	case EAD_TYPE_SET_USERNAME:
		if (!FUNC1())
			goto error;
		ts = FUNC5(&tpe, tce);
		if (!ts)
			goto error;
		break;
	case EAD_TYPE_GET_PRIME:
		B = FUNC3(ts);
		break;
	case EAD_TYPE_SEND_A:
		skey = FUNC4(ts, &A);
		if (!skey)
			goto error;

		FUNC0(skey);
		break;
	}
done:
	state = nstate;
error:
	return;
}