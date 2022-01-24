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
struct arch_hibernate_hdr_invariants {int /*<<< orphan*/  uts_version; } ;
struct TYPE_2__ {int /*<<< orphan*/  version; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct arch_hibernate_hdr_invariants*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC3(struct arch_hibernate_hdr_invariants *i)
{
	FUNC2(i, 0, sizeof(*i));
	FUNC1(i->uts_version, FUNC0()->version, sizeof(i->uts_version));
}