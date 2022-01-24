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
struct repository {TYPE_1__* parsed_objects; } ;
struct TYPE_2__ {int is_shallow; scalar_t__ alternate_shallow_file; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (char const*) ; 

void FUNC3(struct repository *r, const char *path, int override)
{
	if (r->parsed_objects->is_shallow != -1)
		FUNC0("is_repository_shallow must not be called before set_alternate_shallow_file");
	if (r->parsed_objects->alternate_shallow_file && !override)
		return;
	FUNC1(r->parsed_objects->alternate_shallow_file);
	r->parsed_objects->alternate_shallow_file = FUNC2(path);
}