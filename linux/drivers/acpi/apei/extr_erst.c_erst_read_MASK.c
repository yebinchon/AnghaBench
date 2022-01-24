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
typedef  int /*<<< orphan*/  u64 ;
struct cper_record_header {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct cper_record_header*,size_t) ; 
 scalar_t__ erst_disable ; 
 int /*<<< orphan*/  erst_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

ssize_t FUNC3(u64 record_id, struct cper_record_header *record,
		  size_t buflen)
{
	ssize_t len;
	unsigned long flags;

	if (erst_disable)
		return -ENODEV;

	FUNC1(&erst_lock, flags);
	len = FUNC0(record_id, record, buflen);
	FUNC2(&erst_lock, flags);
	return len;
}