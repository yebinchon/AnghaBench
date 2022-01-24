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
struct strbuf {char* buf; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ ,struct strbuf*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC1 (char const*,char const*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

char *FUNC5(const char *in, const char *prefix,
			  struct strbuf *out)
{
	struct strbuf sb = STRBUF_INIT;
	const char *rel = FUNC1(in, prefix, &sb);
	FUNC3(out);
	FUNC0(rel, FUNC4(rel), out, NULL, 0);
	FUNC2(&sb);

	return out->buf;
}