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
struct opal_dev {int dummy; } ;

/* Variables and functions */
 int ERANGE ; 
 int /*<<< orphan*/  FUNC0 (char*,size_t) ; 
 size_t FUNC1 (struct opal_dev*) ; 

__attribute__((used)) static bool FUNC2(int *err, struct opal_dev *cmd, size_t len)
{
	if (*err)
		return false;

	if (FUNC1(cmd) < len) {
		FUNC0("Error adding %zu bytes: end of buffer.\n", len);
		*err = -ERANGE;
		return false;
	}

	return true;
}