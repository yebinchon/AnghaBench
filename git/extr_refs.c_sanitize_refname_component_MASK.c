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
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  REFNAME_ALLOW_ONELEVEL ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ,struct strbuf*) ; 

void FUNC2(const char *refname, struct strbuf *out)
{
	if (FUNC1(refname, REFNAME_ALLOW_ONELEVEL, out))
		FUNC0("sanitizing refname '%s' check returned error", refname);
}