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
struct object_array_entry {scalar_t__ name; scalar_t__ path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ object_array_slopbuf ; 

__attribute__((used)) static void FUNC1(struct object_array_entry *ent)
{
	if (ent->name != object_array_slopbuf)
		FUNC0(ent->name);
	FUNC0(ent->path);
}