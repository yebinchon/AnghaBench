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
struct evhttp {int /*<<< orphan*/  timeout_write; int /*<<< orphan*/  timeout_read; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 

void
FUNC1(struct evhttp* http, int timeout)
{
	FUNC0(&http->timeout_read,  timeout, -1);
	FUNC0(&http->timeout_write, timeout, -1);
}