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
struct evhttp {int /*<<< orphan*/  allowed_methods; } ;
typedef  int /*<<< orphan*/  ev_uint32_t ;

/* Variables and functions */

void
FUNC0(struct evhttp* http, ev_uint32_t methods)
{
	http->allowed_methods = methods;
}