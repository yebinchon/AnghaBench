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
 int /*<<< orphan*/  FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*,char const*,size_t) ; 

__attribute__((used)) static int FUNC4(const char *raw, const char *name,
			 struct strbuf *out)
{
	size_t len = FUNC2(name);

	if (FUNC3(raw, name, len))
		return -1;
	raw += len;

	if (*raw != '=')
		return -1;
	raw++;

	while (*raw && !FUNC0(*raw) && *raw != ';')
		FUNC1(out, *raw++);
	return 0;
}