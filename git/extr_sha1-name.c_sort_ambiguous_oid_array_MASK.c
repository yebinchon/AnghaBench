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
struct repository {int dummy; } ;
struct oid_array {int /*<<< orphan*/  nr; int /*<<< orphan*/  oid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct repository*) ; 
 int /*<<< orphan*/  sort_ambiguous ; 

__attribute__((used)) static void FUNC1(struct repository *r, struct oid_array *a)
{
	FUNC0(a->oid, a->nr, sort_ambiguous, r);
}