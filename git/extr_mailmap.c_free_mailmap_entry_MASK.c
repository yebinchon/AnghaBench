#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char const* nr; int strdup_strings; } ;
struct mailmap_entry {TYPE_1__ namemap; int /*<<< orphan*/  email; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,char const*) ; 
 char const* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  free_mailmap_info ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void *p, const char *s)
{
	struct mailmap_entry *me = (struct mailmap_entry *)p;
	FUNC0("mailmap: removing entries for <%s>, with %d sub-entries\n",
		 s, me->namemap.nr);
	FUNC0("mailmap: - simple: '%s' <%s>\n",
		 FUNC1(me->name), FUNC1(me->email));

	FUNC2(me->name);
	FUNC2(me->email);

	me->namemap.strdup_strings = 1;
	FUNC3(&me->namemap, free_mailmap_info);
}