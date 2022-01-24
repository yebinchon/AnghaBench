#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  ptr; } ;

/* Variables and functions */
 TYPE_1__ buf ; 
 int /*<<< orphan*/  cfg ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

void FUNC7(void)
{
	FUNC2("top-level", "[include]\npath = first\n[include]\npath = second");
	FUNC2("first", "[first]\nfoo = bar");
	FUNC2("second", "[second]\nfoo = bar");

	FUNC3(FUNC5(&cfg, "top-level"));
	FUNC2("first", "[first]\nother = value");
	FUNC1(FUNC4(&buf, cfg, "foo.bar"));
	FUNC3(FUNC4(&buf, cfg, "first.other"));
	FUNC0(buf.ptr, "value");

	FUNC3(FUNC6("top-level"));
	FUNC3(FUNC6("first"));
	FUNC3(FUNC6("second"));
}