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
 int /*<<< orphan*/  FUNC0 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char const*) ; 

void FUNC3(struct strbuf *buf, const char *url,
			      const char *hex,
			      int only_two_digit_prefix)
{
	FUNC0(buf, url);

	FUNC1(buf, "objects/%.*s/", 2, hex);
	if (!only_two_digit_prefix)
		FUNC2(buf, hex + 2);
}