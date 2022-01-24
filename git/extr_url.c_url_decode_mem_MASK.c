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
 struct strbuf STRBUF_INIT ; 
 char* FUNC0 (char const*,char,int) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char const*,int) ; 
 char* FUNC2 (char const**,int,int /*<<< orphan*/ *,struct strbuf*,int /*<<< orphan*/ ) ; 

char *FUNC3(const char *url, int len)
{
	struct strbuf out = STRBUF_INIT;
	const char *colon = FUNC0(url, ':', len);

	/* Skip protocol part if present */
	if (colon && url < colon) {
		FUNC1(&out, url, colon - url);
		len -= colon - url;
		url = colon;
	}
	return FUNC2(&url, len, NULL, &out, 0);
}