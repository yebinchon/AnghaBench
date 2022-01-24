#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_4__ {int /*<<< orphan*/  received_bytes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int) ; 
 TYPE_1__* stream ; 

void FUNC5(void)
{
	git_oid oid;

	FUNC2(FUNC4(stream, "deadbeef", 8));
	FUNC0(8, stream->received_bytes);

	FUNC2(FUNC4(stream, "deadbeef", 4));
	FUNC0(8 + 4, stream->received_bytes);

	FUNC1(FUNC3(&oid, stream));
}