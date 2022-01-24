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
struct evhttp_uri {int dummy; } ;

/* Variables and functions */
 struct evhttp_uri* FUNC0 (char const*,int /*<<< orphan*/ ) ; 

struct evhttp_uri *
FUNC1(const char *source_uri)
{
	return FUNC0(source_uri, 0);
}