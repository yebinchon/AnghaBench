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
struct evbuffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVBUFFER_EOL_ANY ; 
 char* FUNC0 (struct evbuffer*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

char *
FUNC1(struct evbuffer *buffer)
{
	return FUNC0(buffer, NULL, EVBUFFER_EOL_ANY);
}