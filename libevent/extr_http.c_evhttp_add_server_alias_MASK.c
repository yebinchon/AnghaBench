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
struct evhttp_server_alias {int /*<<< orphan*/  alias; } ;
struct evhttp {int /*<<< orphan*/  aliases; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct evhttp_server_alias*,int /*<<< orphan*/ ) ; 
 struct evhttp_server_alias* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct evhttp_server_alias*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  next ; 

int
FUNC4(struct evhttp *http, const char *alias)
{
	struct evhttp_server_alias *evalias;

	evalias = FUNC1(1, sizeof(*evalias));
	if (!evalias)
		return -1;

	evalias->alias = FUNC3(alias);
	if (!evalias->alias) {
		FUNC2(evalias);
		return -1;
	}

	FUNC0(&http->aliases, evalias, next);

	return 0;
}