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
struct strbuf {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 struct strbuf** FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static inline struct strbuf **FUNC1(const struct strbuf *sb,
					       int terminator, int max)
{
	return FUNC0(sb->buf, sb->len, terminator, max);
}