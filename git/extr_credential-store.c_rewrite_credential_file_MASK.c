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
struct credential {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  credential_lock ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*,struct credential*,int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (struct strbuf*)) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 

__attribute__((used)) static void FUNC5(const char *fn, struct credential *c,
				    struct strbuf *extra)
{
	if (FUNC2(&credential_lock, fn, 0) < 0)
		FUNC1("unable to get credential storage lock");
	if (extra)
		FUNC4(extra);
	FUNC3(fn, c, NULL, print_line);
	if (FUNC0(&credential_lock) < 0)
		FUNC1("unable to write credential store");
}