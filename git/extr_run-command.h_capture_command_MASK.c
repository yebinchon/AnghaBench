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
struct child_process {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct child_process*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct strbuf*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC1(struct child_process *cmd,
				  struct strbuf *out,
				  size_t hint)
{
	return FUNC0(cmd, NULL, 0, out, hint, NULL, 0);
}