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
struct ata_timing {void* udma; void* cycle; void* dmack_hold; void* recover; void* active; void* cyc8b; void* rec8b; void* act8b; void* setup; } ;

/* Variables and functions */
 void* FUNC0 (void*,int) ; 

__attribute__((used)) static void FUNC1(const struct ata_timing *t, struct ata_timing *q, int T, int UT)
{
	q->setup	= FUNC0(t->setup,       T);
	q->act8b	= FUNC0(t->act8b,       T);
	q->rec8b	= FUNC0(t->rec8b,       T);
	q->cyc8b	= FUNC0(t->cyc8b,       T);
	q->active	= FUNC0(t->active,      T);
	q->recover	= FUNC0(t->recover,     T);
	q->dmack_hold	= FUNC0(t->dmack_hold,  T);
	q->cycle	= FUNC0(t->cycle,       T);
	q->udma		= FUNC0(t->udma,       UT);
}