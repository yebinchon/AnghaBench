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
struct class_attribute {int dummy; } ;
struct class {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EAGAIN ; 
 int FUNC0 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static ssize_t FUNC6(struct class *class,
			       struct class_attribute *attr, const char *buf,
			       size_t count)
{
	u64 streamid;
	int rc;

	rc = FUNC0(buf, 0, &streamid);
	if (rc)
		return rc;

	FUNC5();

	do {
		rc = FUNC2(streamid);
		if (rc == -EAGAIN)
			FUNC3(1);
	} while (rc == -EAGAIN);

	if (rc)
		return rc;

	FUNC1();

	FUNC4();

	return count;
}