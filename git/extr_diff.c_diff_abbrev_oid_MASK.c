#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct object_id {int dummy; } ;
struct TYPE_4__ {scalar_t__ have_repository; } ;
struct TYPE_3__ {int hexsz; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FALLBACK_DEFAULT_ABBREV ; 
 char const* FUNC1 (struct object_id const*,int) ; 
 char* FUNC2 (struct object_id const*) ; 
 TYPE_2__* startup_info ; 
 TYPE_1__* the_hash_algo ; 

__attribute__((used)) static const char *FUNC3(const struct object_id *oid, int abbrev)
{
	if (startup_info->have_repository)
		return FUNC1(oid, abbrev);
	else {
		char *hex = FUNC2(oid);
		if (abbrev < 0)
			abbrev = FALLBACK_DEFAULT_ABBREV;
		if (abbrev > the_hash_algo->hexsz)
			FUNC0("oid abbreviation out of range: %d", abbrev);
		if (abbrev)
			hex[abbrev] = '\0';
		return hex;
	}
}