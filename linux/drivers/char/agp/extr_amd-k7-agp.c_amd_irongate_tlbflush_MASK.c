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
struct agp_memory {int dummy; } ;
struct TYPE_2__ {scalar_t__ registers; } ;

/* Variables and functions */
 scalar_t__ AMD_TLBFLUSH ; 
 TYPE_1__ amd_irongate_private ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct agp_memory *temp)
{
	FUNC1(1, amd_irongate_private.registers+AMD_TLBFLUSH);
	FUNC0(amd_irongate_private.registers+AMD_TLBFLUSH);	/* PCI Posting. */
}