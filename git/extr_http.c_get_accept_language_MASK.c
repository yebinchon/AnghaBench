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
struct strbuf {scalar_t__ len; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 char const* cached_accept_language ; 
 char* FUNC0 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*) ; 

__attribute__((used)) static const char *FUNC2(void)
{
	if (!cached_accept_language) {
		struct strbuf buf = STRBUF_INIT;
		FUNC1(&buf);
		if (buf.len > 0)
			cached_accept_language = FUNC0(&buf, NULL);
	}

	return cached_accept_language;
}