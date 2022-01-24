#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct strbuf {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  buf; } ;
struct ref_formatting_stack {TYPE_1__ output; scalar_t__ at_end_data; } ;
struct align {int /*<<< orphan*/  width; int /*<<< orphan*/  position; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ref_formatting_stack **stack)
{
	struct ref_formatting_stack *cur = *stack;
	struct align *align = (struct align *)cur->at_end_data;
	struct strbuf s = STRBUF_INIT;

	FUNC2(&s, align->position, align->width, cur->output.buf);
	FUNC1(&cur->output, &s);
	FUNC0(&s);
}