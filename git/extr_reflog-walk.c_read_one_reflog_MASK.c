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
struct reflog_info {int tz; void* message; int /*<<< orphan*/  timestamp; void* email; int /*<<< orphan*/  noid; int /*<<< orphan*/  ooid; } ;
struct object_id {int dummy; } ;
struct complete_reflogs {int nr; struct reflog_info* items; int /*<<< orphan*/  alloc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct reflog_info*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct object_id*) ; 
 void* FUNC2 (char const*) ; 

__attribute__((used)) static int FUNC3(struct object_id *ooid, struct object_id *noid,
		const char *email, timestamp_t timestamp, int tz,
		const char *message, void *cb_data)
{
	struct complete_reflogs *array = cb_data;
	struct reflog_info *item;

	FUNC0(array->items, array->nr + 1, array->alloc);
	item = array->items + array->nr;
	FUNC1(&item->ooid, ooid);
	FUNC1(&item->noid, noid);
	item->email = FUNC2(email);
	item->timestamp = timestamp;
	item->tz = tz;
	item->message = FUNC2(message);
	array->nr++;
	return 0;
}