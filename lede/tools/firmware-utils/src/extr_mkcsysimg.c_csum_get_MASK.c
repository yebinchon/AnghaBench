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
typedef  int /*<<< orphan*/  uint16_t ;
struct csum_state {int size; } ;

/* Variables and functions */
#define  CSUM_SIZE_16 129 
#define  CSUM_SIZE_8 128 
 int /*<<< orphan*/  FUNC0 (struct csum_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct csum_state*) ; 

uint16_t
FUNC2(struct csum_state *css)
{
	uint16_t ret;

	switch (css->size) {
	case CSUM_SIZE_8:
		ret = FUNC1(css);
		break;
	case CSUM_SIZE_16:
		ret = FUNC0(css);
		break;
	}

	return ret;
}