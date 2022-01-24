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
typedef  int /*<<< orphan*/  timestamp_t ;
struct read_ref_at_cb {int* cutoff_tz; int /*<<< orphan*/  oid; int /*<<< orphan*/  reccnt; int /*<<< orphan*/ * cutoff_cnt; int /*<<< orphan*/ * cutoff_time; int /*<<< orphan*/ * msg; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct object_id*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

__attribute__((used)) static int FUNC3(struct object_id *ooid, struct object_id *noid,
				  const char *email, timestamp_t timestamp,
				  int tz, const char *message, void *cb_data)
{
	struct read_ref_at_cb *cb = cb_data;

	if (cb->msg)
		*cb->msg = FUNC2(message);
	if (cb->cutoff_time)
		*cb->cutoff_time = timestamp;
	if (cb->cutoff_tz)
		*cb->cutoff_tz = tz;
	if (cb->cutoff_cnt)
		*cb->cutoff_cnt = cb->reccnt;
	FUNC1(cb->oid, ooid);
	if (FUNC0(cb->oid))
		FUNC1(cb->oid, noid);
	/* We just want the first entry */
	return 1;
}