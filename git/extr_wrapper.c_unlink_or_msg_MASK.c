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
struct strbuf {int dummy; } ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct strbuf*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (char const*) ; 

int FUNC4(const char *file, struct strbuf *err)
{
	int rc = FUNC3(file);

	FUNC0(err);

	if (!rc || errno == ENOENT)
		return 0;

	FUNC1(err, "unable to unlink '%s': %s",
		    file, FUNC2(errno));
	return -1;
}