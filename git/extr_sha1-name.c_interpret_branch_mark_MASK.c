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
struct repository {int dummy; } ;
typedef  struct branch branch ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 struct branch* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char const*,char,int) ; 
 int /*<<< orphan*/  FUNC5 (struct repository*,struct strbuf*,char const*) ; 
 char* FUNC6 (char const*,int) ; 

__attribute__((used)) static int FUNC7(struct repository *r,
				 const char *name, int namelen,
				 int at, struct strbuf *buf,
				 int (*get_mark)(const char *, int),
				 const char *(*get_data)(struct branch *,
							 struct strbuf *),
				 unsigned allowed)
{
	int len;
	struct branch *branch;
	struct strbuf err = STRBUF_INIT;
	const char *value;

	len = get_mark(name + at, namelen - at);
	if (!len)
		return -1;

	if (FUNC4(name, ':', at))
		return -1;

	if (at) {
		char *name_str = FUNC6(name, at);
		branch = FUNC0(name_str);
		FUNC3(name_str);
	} else
		branch = FUNC0(NULL);

	value = get_data(branch, &err);
	if (!value)
		FUNC2("%s", err.buf);

	if (!FUNC1(value, allowed))
		return -1;

	FUNC5(r, buf, value);
	return len + at;
}