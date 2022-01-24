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
typedef  int /*<<< orphan*/  ISzAllocPtr ;
typedef  scalar_t__ CLzmaEncHandle ;
typedef  int /*<<< orphan*/  CLzmaEnc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(CLzmaEncHandle p, ISzAllocPtr alloc, ISzAllocPtr allocBig)
{
  FUNC1((CLzmaEnc *)p, alloc, allocBig);
  FUNC0(alloc, p);
}