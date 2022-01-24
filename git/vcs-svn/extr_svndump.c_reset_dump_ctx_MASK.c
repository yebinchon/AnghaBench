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
struct TYPE_2__ {int version; int /*<<< orphan*/  uuid; int /*<<< orphan*/  url; } ;

/* Variables and functions */
 TYPE_1__ dump_ctx ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(const char *url)
{
	FUNC1(&dump_ctx.url);
	if (url)
		FUNC0(&dump_ctx.url, url);
	dump_ctx.version = 1;
	FUNC1(&dump_ctx.uuid);
}