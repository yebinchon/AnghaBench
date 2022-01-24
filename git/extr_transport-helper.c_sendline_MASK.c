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
struct strbuf {char* buf; int /*<<< orphan*/  len; } ;
struct helper_data {TYPE_1__* helper; } ;
struct TYPE_2__ {int /*<<< orphan*/  in; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct helper_data *helper, struct strbuf *buffer)
{
	if (debug)
		FUNC2(stderr, "Debug: Remote helper: -> %s", buffer->buf);
	if (FUNC3(helper->helper->in, buffer->buf, buffer->len) < 0)
		FUNC1(FUNC0("full write to remote helper failed"));
}