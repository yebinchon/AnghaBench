#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct string_list {int nr; TYPE_1__* items; } ;
struct strbuf {char const* const buf; } ;
struct TYPE_6__ {void* util; } ;
struct TYPE_5__ {void* util; } ;
struct TYPE_4__ {char* util; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char**,int) ; 
 struct strbuf STRBUF_INIT ; 
 struct string_list STRING_LIST_INIT_DUP ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char const* const,int) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*) ; 
 char* FUNC4 (char const* const,char) ; 
 TYPE_3__* FUNC5 (struct string_list*,char const* const) ; 
 int /*<<< orphan*/  FUNC6 (struct string_list*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC7 (struct string_list*,char const* const) ; 
 int /*<<< orphan*/  FUNC8 (struct string_list*,char const* const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct string_list*) ; 

__attribute__((used)) static char **FUNC10(const char *const *deltaenv)
{
	extern char **environ;
	char **childenv;
	struct string_list env = STRING_LIST_INIT_DUP;
	struct strbuf key = STRBUF_INIT;
	const char *const *p;
	int i;

	/* Construct a sorted string list consisting of the current environ */
	for (p = (const char *const *) environ; p && *p; p++) {
		const char *equals = FUNC4(*p, '=');

		if (equals) {
			FUNC3(&key);
			FUNC1(&key, *p, equals - *p);
			FUNC5(&env, key.buf)->util = (void *) *p;
		} else {
			FUNC5(&env, *p)->util = (void *) *p;
		}
	}
	FUNC9(&env);

	/* Merge in 'deltaenv' with the current environ */
	for (p = deltaenv; p && *p; p++) {
		const char *equals = FUNC4(*p, '=');

		if (equals) {
			/* ('key=value'), insert or replace entry */
			FUNC3(&key);
			FUNC1(&key, *p, equals - *p);
			FUNC7(&env, key.buf)->util = (void *) *p;
		} else {
			/* otherwise ('key') remove existing entry */
			FUNC8(&env, *p, 0);
		}
	}

	/* Create an array of 'char *' to be used as the childenv */
	FUNC0(childenv, env.nr + 1);
	for (i = 0; i < env.nr; i++)
		childenv[i] = env.items[i].util;
	childenv[env.nr] = NULL;

	FUNC6(&env, 0);
	FUNC2(&key);
	return childenv;
}