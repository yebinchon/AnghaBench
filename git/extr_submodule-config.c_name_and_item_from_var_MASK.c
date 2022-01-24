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
struct strbuf {int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*,char*,char const**,int*,char const**) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(const char *var, struct strbuf *name,
				  struct strbuf *item)
{
	const char *subsection, *key;
	int subsection_len, parse;
	parse = FUNC2(var, "submodule", &subsection,
			&subsection_len, &key);
	if (parse < 0 || !subsection)
		return 0;

	FUNC3(name, subsection, subsection_len);
	if (FUNC1(name->buf) < 0) {
		FUNC6(FUNC0("ignoring suspicious submodule name: %s"), name->buf);
		FUNC5(name);
		return 0;
	}

	FUNC4(item, key);

	return 1;
}