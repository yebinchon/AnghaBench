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
struct column {scalar_t__ color; } ;

/* Variables and functions */
 scalar_t__ column_colors_max ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct strbuf *sb, const struct column *c,
				char col_char)
{
	if (c->color < column_colors_max)
		FUNC2(sb, FUNC0(c->color));
	FUNC1(sb, col_char);
	if (c->color < column_colors_max)
		FUNC2(sb, FUNC0(column_colors_max));
}