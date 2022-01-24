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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*) ; 

char *FUNC4(struct strbuf *buf,
		    const unsigned char *hash,
		    const char *ext)
{
	FUNC3(buf);
	FUNC2(buf, "%s/pack/pack-%s.%s", FUNC0(),
		    FUNC1(hash), ext);
	return buf->buf;
}