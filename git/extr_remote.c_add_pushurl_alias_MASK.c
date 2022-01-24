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
struct remote {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct remote*,char const*) ; 
 char* FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rewrites_push ; 

__attribute__((used)) static void FUNC2(struct remote *remote, const char *url)
{
	const char *pushurl = FUNC1(url, &rewrites_push);
	if (pushurl != url)
		FUNC0(remote, pushurl);
}