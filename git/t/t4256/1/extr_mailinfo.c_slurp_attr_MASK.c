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
 int /*<<< orphan*/  FUNC0 (struct strbuf*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (char const*,char const*) ; 
 size_t FUNC3 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

__attribute__((used)) static int FUNC5(const char *line, const char *name, struct strbuf *attr)
{
	const char *ends, *ap = FUNC2(line, name);
	size_t sz;

	FUNC1(attr, 0);
	if (!ap)
		return 0;
	ap += FUNC4(name);
	if (*ap == '"') {
		ap++;
		ends = "\"";
	}
	else
		ends = "; \t";
	sz = FUNC3(ap, ends);
	FUNC0(attr, ap, sz);
	return 1;
}