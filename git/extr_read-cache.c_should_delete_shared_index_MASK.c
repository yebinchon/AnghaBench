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
struct stat {unsigned long st_mtime; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 unsigned long FUNC2 () ; 
 scalar_t__ FUNC3 (char const*,struct stat*) ; 

__attribute__((used)) static int FUNC4(const char *shared_index_path)
{
	struct stat st;
	unsigned long expiration;

	/* Check timestamp */
	expiration = FUNC2();
	if (!expiration)
		return 0;
	if (FUNC3(shared_index_path, &st))
		return FUNC1(FUNC0("could not stat '%s'"), shared_index_path);
	if (st.st_mtime > expiration)
		return 0;

	return 1;
}