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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_SYNC_HAS_STP ; 
 int /*<<< orphan*/  CLOCK_SYNC_STP ; 
 size_t EINVAL ; 
 size_t EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  clock_sync_flags ; 
 int /*<<< orphan*/  clock_sync_mutex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 unsigned int FUNC5 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int stp_online ; 
 int /*<<< orphan*/  stp_work ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  time_sync_wq ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
				struct device_attribute *attr,
				const char *buf, size_t count)
{
	unsigned int value;

	value = FUNC5(buf, NULL, 0);
	if (value != 0 && value != 1)
		return -EINVAL;
	if (!FUNC6(CLOCK_SYNC_HAS_STP, &clock_sync_flags))
		return -EOPNOTSUPP;
	FUNC1(&clock_sync_mutex);
	stp_online = value;
	if (stp_online)
		FUNC4(CLOCK_SYNC_STP, &clock_sync_flags);
	else
		FUNC0(CLOCK_SYNC_STP, &clock_sync_flags);
	FUNC3(time_sync_wq, &stp_work);
	FUNC2(&clock_sync_mutex);
	return count;
}