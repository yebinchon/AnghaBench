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
struct event_base {int dummy; } ;
struct basic_test_data {struct event_base* base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct event_base*) ; 
 int /*<<< orphan*/  FUNC1 (struct event_base*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  prepare_callback_3 ; 

__attribute__((used)) static void
FUNC2(void *ptr)
{
	struct basic_test_data *data = ptr;
	struct event_base *base = data->base;

	FUNC1(base, &prepare_callback_3, NULL);
	FUNC0(base);
}