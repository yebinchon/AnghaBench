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
struct mod_section {int num_entries; int max_entries; TYPE_1__* shdr; } ;
struct TYPE_4__ {struct mod_section got; } ;
struct module {TYPE_2__ arch; } ;
struct got_entry {int dummy; } ;
struct TYPE_3__ {scalar_t__ sh_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct got_entry FUNC1 (unsigned long) ; 
 struct got_entry* FUNC2 (unsigned long,struct mod_section*) ; 

unsigned long FUNC3(struct module *mod, unsigned long val)
{
	struct mod_section *got_sec = &mod->arch.got;
	int i = got_sec->num_entries;
	struct got_entry *got = FUNC2(val, got_sec);

	if (got)
		return (unsigned long)got;

	/* There is no duplicate entry, create a new one */
	got = (struct got_entry *)got_sec->shdr->sh_addr;
	got[i] = FUNC1(val);

	got_sec->num_entries++;
	FUNC0(got_sec->num_entries > got_sec->max_entries);

	return (unsigned long)&got[i];
}