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
struct resource {int dummy; } ;
struct ioremap_desc {int flags; } ;

/* Variables and functions */
 int IORES_MAP_ENCRYPTED ; 
 int IORES_MAP_SYSTEM_RAM ; 
 int FUNC0 (struct resource*) ; 
 int FUNC1 (struct resource*) ; 

__attribute__((used)) static int FUNC2(struct resource *res, void *arg)
{
	struct ioremap_desc *desc = arg;

	if (!(desc->flags & IORES_MAP_SYSTEM_RAM))
		desc->flags |= FUNC1(res);

	if (!(desc->flags & IORES_MAP_ENCRYPTED))
		desc->flags |= FUNC0(res);

	return ((desc->flags & (IORES_MAP_SYSTEM_RAM | IORES_MAP_ENCRYPTED)) ==
			       (IORES_MAP_SYSTEM_RAM | IORES_MAP_ENCRYPTED));
}