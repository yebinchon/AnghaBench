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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 size_t FUNC0 (char const*,int,struct strbuf*,int /*<<< orphan*/ *,int) ; 

size_t FUNC1(const char *name, struct strbuf *sb, FILE *fp, int nodq)
{
	return FUNC0(name, -1, sb, fp, nodq);
}