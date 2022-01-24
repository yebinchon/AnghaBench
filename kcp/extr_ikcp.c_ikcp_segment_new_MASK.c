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
typedef  int /*<<< orphan*/  ikcpcb ;
typedef  int /*<<< orphan*/  IKCPSEG ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 

__attribute__((used)) static IKCPSEG* FUNC1(ikcpcb *kcp, int size)
{
	return (IKCPSEG*)FUNC0(sizeof(IKCPSEG) + size);
}