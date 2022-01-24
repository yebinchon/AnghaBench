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
struct remote {int /*<<< orphan*/  name; int /*<<< orphan*/  fetch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 char const* FUNC2 (struct strbuf*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static const char *FUNC3(struct remote *remote,
					  const char *refname,
					  struct strbuf *err)
{
	char *ret;

	ret = FUNC1(&remote->fetch, refname);
	if (!ret)
		return FUNC2(err,
				 FUNC0("push destination '%s' on remote '%s' has no local tracking branch"),
				 refname, remote->name);
	return ret;
}