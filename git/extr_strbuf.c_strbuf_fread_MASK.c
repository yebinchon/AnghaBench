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
struct strbuf {size_t alloc; scalar_t__ len; scalar_t__ buf; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 size_t FUNC0 (scalar_t__,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,scalar_t__) ; 

size_t FUNC4(struct strbuf *sb, size_t size, FILE *f)
{
	size_t res;
	size_t oldalloc = sb->alloc;

	FUNC1(sb, size);
	res = FUNC0(sb->buf + sb->len, 1, size, f);
	if (res > 0)
		FUNC3(sb, sb->len + res);
	else if (oldalloc == 0)
		FUNC2(sb);
	return res;
}