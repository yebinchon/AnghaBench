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
struct strbuf {char* buf; size_t len; size_t alloc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*) ; 

void FUNC2(struct strbuf *sb, void *buf, size_t len, size_t alloc)
{
	FUNC1(sb);
	sb->buf   = buf;
	sb->len   = len;
	sb->alloc = alloc;
	FUNC0(sb, 0);
	sb->buf[sb->len] = '\0';
}