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
 int /*<<< orphan*/  FUNC1 (struct remote*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rewrites ; 

__attribute__((used)) static void FUNC3(struct remote *remote, const char *url)
{
	FUNC1(remote, FUNC2(url, &rewrites));
	FUNC0(remote, url);
}