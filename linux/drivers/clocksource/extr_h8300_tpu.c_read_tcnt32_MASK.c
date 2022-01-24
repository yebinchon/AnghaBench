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
struct tpu_priv {scalar_t__ mapbase2; scalar_t__ mapbase1; } ;

/* Variables and functions */
 scalar_t__ TCNT ; 
 unsigned long FUNC0 (scalar_t__) ; 

__attribute__((used)) static inline unsigned long FUNC1(struct tpu_priv *p)
{
	unsigned long tcnt;

	tcnt = FUNC0(p->mapbase1 + TCNT) << 16;
	tcnt |= FUNC0(p->mapbase2 + TCNT);
	return tcnt;
}