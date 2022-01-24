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
struct request_queue {int dummy; } ;
typedef  int sector_t ;

/* Variables and functions */
 int FUNC0 (struct request_queue*) ; 

__attribute__((used)) static inline sector_t FUNC1(struct request_queue *q,
				      sector_t sector)
{
	sector_t zone_mask = FUNC0(q) - 1;

	return sector & ~zone_mask;
}