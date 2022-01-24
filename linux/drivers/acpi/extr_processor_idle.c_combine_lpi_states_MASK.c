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
struct acpi_lpi_state {scalar_t__ entry_method; char* desc; int /*<<< orphan*/  index; int /*<<< orphan*/  arch_flags; int /*<<< orphan*/  flags; int /*<<< orphan*/  enable_parent_state; scalar_t__ wake_latency; int /*<<< orphan*/  min_residency; scalar_t__ address; } ;

/* Variables and functions */
 scalar_t__ ACPI_CSTATE_INTEGER ; 
 int /*<<< orphan*/  ACPI_CX_DESC_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(struct acpi_lpi_state *local,
			       struct acpi_lpi_state *parent,
			       struct acpi_lpi_state *result)
{
	if (parent->entry_method == ACPI_CSTATE_INTEGER) {
		if (!parent->address) /* 0 means autopromotable */
			return false;
		result->address = local->address + parent->address;
	} else {
		result->address = parent->address;
	}

	result->min_residency = FUNC0(local->min_residency, parent->min_residency);
	result->wake_latency = local->wake_latency + parent->wake_latency;
	result->enable_parent_state = parent->enable_parent_state;
	result->entry_method = local->entry_method;

	result->flags = parent->flags;
	result->arch_flags = parent->arch_flags;
	result->index = parent->index;

	FUNC2(result->desc, local->desc, ACPI_CX_DESC_LEN);
	FUNC1(result->desc, "+", ACPI_CX_DESC_LEN);
	FUNC1(result->desc, parent->desc, ACPI_CX_DESC_LEN);
	return true;
}