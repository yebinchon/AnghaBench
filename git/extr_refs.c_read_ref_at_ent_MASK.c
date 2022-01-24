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
typedef  scalar_t__ timestamp_t ;
struct object_id {int dummy; } ;
struct read_ref_at_cb {int tz; scalar_t__ date; scalar_t__ at_time; scalar_t__ cnt; int* cutoff_tz; int found_it; struct object_id noid; struct object_id ooid; int /*<<< orphan*/  refname; struct object_id* oid; scalar_t__ reccnt; scalar_t__* cutoff_cnt; scalar_t__* cutoff_time; int /*<<< orphan*/ * msg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RFC2822 ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct object_id*) ; 
 int /*<<< orphan*/  FUNC3 (struct object_id*,struct object_id*) ; 
 int /*<<< orphan*/  FUNC4 (struct object_id*,struct object_id*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 

__attribute__((used)) static int FUNC8(struct object_id *ooid, struct object_id *noid,
		const char *email, timestamp_t timestamp, int tz,
		const char *message, void *cb_data)
{
	struct read_ref_at_cb *cb = cb_data;

	cb->reccnt++;
	cb->tz = tz;
	cb->date = timestamp;

	if (timestamp <= cb->at_time || cb->cnt == 0) {
		if (cb->msg)
			*cb->msg = FUNC7(message);
		if (cb->cutoff_time)
			*cb->cutoff_time = timestamp;
		if (cb->cutoff_tz)
			*cb->cutoff_tz = tz;
		if (cb->cutoff_cnt)
			*cb->cutoff_cnt = cb->reccnt - 1;
		/*
		 * we have not yet updated cb->[n|o]oid so they still
		 * hold the values for the previous record.
		 */
		if (!FUNC2(&cb->ooid)) {
			FUNC3(cb->oid, noid);
			if (!FUNC4(&cb->ooid, noid))
				FUNC6(FUNC1("log for ref %s has gap after %s"),
					cb->refname, FUNC5(cb->date, cb->tz, FUNC0(RFC2822)));
		}
		else if (cb->date == cb->at_time)
			FUNC3(cb->oid, noid);
		else if (!FUNC4(noid, cb->oid))
			FUNC6(FUNC1("log for ref %s unexpectedly ended on %s"),
				cb->refname, FUNC5(cb->date, cb->tz,
						       FUNC0(RFC2822)));
		FUNC3(&cb->ooid, ooid);
		FUNC3(&cb->noid, noid);
		cb->found_it = 1;
		return 1;
	}
	FUNC3(&cb->ooid, ooid);
	FUNC3(&cb->noid, noid);
	if (cb->cnt > 0)
		cb->cnt--;
	return 0;
}