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
struct strbuf {int /*<<< orphan*/  buf; } ;
struct argv_array {int dummy; } ;

/* Variables and functions */
 scalar_t__ EOF ; 
 int /*<<< orphan*/  FUNC0 (struct argv_array*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdin ; 
 scalar_t__ FUNC1 (struct strbuf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct strbuf *sb,
				     struct argv_array *prune)
{
	while (FUNC1(sb, stdin) != EOF)
		FUNC0(prune, sb->buf);
}