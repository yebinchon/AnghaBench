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
typedef  union decode_item {int dummy; } decode_item ;
struct coverage_entry {int dummy; } ;
struct TYPE_3__ {scalar_t__ nesting; scalar_t__ num_entries; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MAX_COVERAGE_ENTRIES ; 
 TYPE_1__ coverage ; 
 int /*<<< orphan*/  coverage_start_fn ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (union decode_item const*,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int FUNC2(const union decode_item *table)
{
	coverage.base = FUNC0(MAX_COVERAGE_ENTRIES,
				      sizeof(struct coverage_entry),
				      GFP_KERNEL);
	coverage.num_entries = 0;
	coverage.nesting = 0;
	return FUNC1(table, coverage_start_fn, &coverage);
}