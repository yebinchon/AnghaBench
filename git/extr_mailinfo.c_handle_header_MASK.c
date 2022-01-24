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
struct strbuf {int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct strbuf*,struct strbuf const*) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*) ; 
 struct strbuf* FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct strbuf **out, const struct strbuf *line)
{
	if (!*out) {
		*out = FUNC3(sizeof(struct strbuf));
		FUNC1(*out, line->len);
	} else
		FUNC2(*out);

	FUNC0(*out, line);
}