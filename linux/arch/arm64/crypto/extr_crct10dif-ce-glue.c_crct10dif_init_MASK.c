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
typedef  scalar_t__ u16 ;
struct shash_desc {int dummy; } ;

/* Variables and functions */
 scalar_t__* FUNC0 (struct shash_desc*) ; 

__attribute__((used)) static int FUNC1(struct shash_desc *desc)
{
	u16 *crc = FUNC0(desc);

	*crc = 0;
	return 0;
}