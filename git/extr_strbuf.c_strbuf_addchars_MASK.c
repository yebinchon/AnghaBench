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
struct strbuf {scalar_t__ len; scalar_t__ buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,scalar_t__) ; 

void FUNC3(struct strbuf *sb, int c, size_t n)
{
	FUNC1(sb, n);
	FUNC0(sb->buf + sb->len, c, n);
	FUNC2(sb, sb->len + n);
}