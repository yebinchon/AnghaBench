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
struct ingenic_cgu_gate_info {int clear_to_gate; int /*<<< orphan*/  bit; scalar_t__ reg; } ;
struct ingenic_cgu {scalar_t__ base; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 

__attribute__((used)) static inline bool
FUNC2(struct ingenic_cgu *cgu,
		     const struct ingenic_cgu_gate_info *info)
{
	return !!(FUNC1(cgu->base + info->reg) & FUNC0(info->bit))
		^ info->clear_to_gate;
}