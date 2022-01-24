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
struct object_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct strbuf*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct object_id*) ; 

void FUNC2(struct strbuf *sb)
{
	struct object_id object;

	if (FUNC1(sb->buf, &object)) {
		/* fallback to expand_notes_ref */
		FUNC0(sb);
	}
}