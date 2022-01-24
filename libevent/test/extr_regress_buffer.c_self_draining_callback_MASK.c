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
 int /*<<< orphan*/  FUNC0 (struct evbuffer*,size_t) ; 

__attribute__((used)) static void
FUNC1(struct evbuffer *evbuffer, size_t old_len,
		size_t new_len, void *arg)
{
	if (new_len > old_len)
		FUNC0(evbuffer, new_len);
}