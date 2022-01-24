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
struct resource {int desc; } ;

/* Variables and functions */
#define  IORES_DESC_NONE 129 
#define  IORES_DESC_RESERVED 128 
 unsigned int IORES_MAP_ENCRYPTED ; 
 int /*<<< orphan*/  FUNC0 () ; 

__attribute__((used)) static unsigned int FUNC1(struct resource *res)
{
	if (!FUNC0())
		return 0;

	switch (res->desc) {
	case IORES_DESC_NONE:
	case IORES_DESC_RESERVED:
		break;
	default:
		return IORES_MAP_ENCRYPTED;
	}

	return 0;
}