#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* real_name; char* real_email; } ;
typedef  TYPE_1__ git_mailmap_entry ;
typedef  int /*<<< orphan*/  git_mailmap ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/  const*,char const*,char const*) ; 

int FUNC2(
	const char **real_name, const char **real_email,
	const git_mailmap *mailmap,
	const char *name, const char *email)
{
	const git_mailmap_entry *entry = NULL;
	FUNC0(name && email);

	*real_name = name;
	*real_email = email;

	if ((entry = FUNC1(mailmap, name, email))) {
		if (entry->real_name)
			*real_name = entry->real_name;
		if (entry->real_email)
			*real_email = entry->real_email;
	}
	return 0;
}