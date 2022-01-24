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
struct object_entry {int dummy; } ;
struct branch {int /*<<< orphan*/  oid; } ;
typedef  int /*<<< orphan*/  b ;
struct TYPE_2__ {int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct object_entry*) ; 
 TYPE_1__ command_buf ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct object_entry* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct object_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct branch*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  next_mark ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct branch*,char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static void FUNC10(void)
{
	struct object_entry *e;
	struct branch b;

	FUNC9();
	FUNC8();

	/* mark ... */
	FUNC6();
	if (!next_mark)
		FUNC2(FUNC0("Expected 'mark' command, got %s"), command_buf.buf);

	/* to ... */
	FUNC5(&b, 0, sizeof(b));
	if (!FUNC7(&b, "to "))
		FUNC2(FUNC0("Expected 'to' command, got %s"), command_buf.buf);
	e = FUNC3(&b.oid);
	FUNC1(e);
	FUNC4(next_mark, e);
}