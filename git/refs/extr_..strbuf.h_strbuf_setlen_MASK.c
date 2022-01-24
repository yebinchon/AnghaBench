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
struct strbuf {int alloc; size_t len; char* buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* strbuf_slopbuf ; 

__attribute__((used)) static inline void FUNC2(struct strbuf *sb, size_t len)
{
	if (len > (sb->alloc ? sb->alloc - 1 : 0))
		FUNC1("BUG: strbuf_setlen() beyond buffer");
	sb->len = len;
	if (sb->buf != strbuf_slopbuf)
		sb->buf[len] = '\0';
	else
		FUNC0(!strbuf_slopbuf[0]);
}