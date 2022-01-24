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
struct table_entry {char const* content_type; scalar_t__ extension; } ;

/* Variables and functions */
 struct table_entry* content_type_table ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,char const*) ; 
 scalar_t__ FUNC1 (char const*,char) ; 
 char* FUNC2 (char const*,char) ; 

__attribute__((used)) static const char *
FUNC3(const char *path)
{
	const char *last_period, *extension;
	const struct table_entry *ent;
	last_period = FUNC2(path, '.');
	if (!last_period || FUNC1(last_period, '/'))
		goto not_found; /* no exension */
	extension = last_period + 1;
	for (ent = &content_type_table[0]; ent->extension; ++ent) {
		if (!FUNC0(ent->extension, extension))
			return ent->content_type;
	}

not_found:
	return "application/misc";
}