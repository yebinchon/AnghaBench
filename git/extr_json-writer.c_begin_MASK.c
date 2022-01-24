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
struct json_writer {int pretty; scalar_t__ need_comma; int /*<<< orphan*/  open_stack; int /*<<< orphan*/  json; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char) ; 

__attribute__((used)) static void FUNC1(struct json_writer *jw, char ch_open, int pretty)
{
	jw->pretty = pretty;

	FUNC0(&jw->json, ch_open);

	FUNC0(&jw->open_stack, ch_open);
	jw->need_comma = 0;
}