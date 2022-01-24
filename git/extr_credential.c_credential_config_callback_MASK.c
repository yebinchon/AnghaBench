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
struct credential {int /*<<< orphan*/  use_http_path; scalar_t__ username; int /*<<< orphan*/  helpers; } ;

/* Variables and functions */
 struct credential CREDENTIAL_INIT ; 
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct credential*) ; 
 int /*<<< orphan*/  FUNC2 (struct credential*,char*) ; 
 int FUNC3 (struct credential*,struct credential*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC10 (char const*,char) ; 
 char* FUNC11 (char const*,int) ; 
 scalar_t__ FUNC12 (char const*) ; 

__attribute__((used)) static int FUNC13(const char *var, const char *value,
				      void *data)
{
	struct credential *c = data;
	const char *key, *dot;

	if (!FUNC6(var, "credential.", &key))
		return 0;

	if (!value)
		return FUNC0(var);

	dot = FUNC10(key, '.');
	if (dot) {
		struct credential want = CREDENTIAL_INIT;
		char *url = FUNC11(key, dot - key);
		int matched;

		FUNC2(&want, url);
		matched = FUNC3(&want, c);

		FUNC1(&want);
		FUNC4(url);

		if (!matched)
			return 0;
		key = dot + 1;
	}

	if (!FUNC7(key, "helper")) {
		if (*value)
			FUNC8(&c->helpers, value);
		else
			FUNC9(&c->helpers, 0);
	} else if (!FUNC7(key, "username")) {
		if (!c->username)
			c->username = FUNC12(value);
	}
	else if (!FUNC7(key, "usehttppath"))
		c->use_http_path = FUNC5(var, value);

	return 0;
}