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
struct strbuf {char* buf; int len; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char) ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 

__attribute__((used)) static inline int FUNC3(const struct strbuf *line, const char *hdr)
{
	int len = FUNC1(hdr);
	return !FUNC2(line->buf, hdr, len) && line->len > len &&
			line->buf[len] == ':' && FUNC0(line->buf[len + 1]);
}