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
struct mailmap_info {int /*<<< orphan*/  email; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void *p, const char *s)
{
	struct mailmap_info *mi = (struct mailmap_info *)p;
	FUNC0("mailmap: -- complex: '%s' -> '%s' <%s>\n",
		 s, FUNC1(mi->name), FUNC1(mi->email));
	FUNC2(mi->name);
	FUNC2(mi->email);
}