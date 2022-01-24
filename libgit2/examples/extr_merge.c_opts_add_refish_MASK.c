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
struct TYPE_3__ {int heads_count; char const** heads; } ;
typedef  TYPE_1__ merge_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char const** FUNC1 (void*,size_t) ; 

__attribute__((used)) static void FUNC2(merge_options *opts, const char *refish)
{
	size_t sz;

	FUNC0(opts != NULL);

	sz = ++opts->heads_count * sizeof(opts->heads[0]);
	opts->heads = FUNC1((void *) opts->heads, sz);
	opts->heads[opts->heads_count - 1] = refish;
}