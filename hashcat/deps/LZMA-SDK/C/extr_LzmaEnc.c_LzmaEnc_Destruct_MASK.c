#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  rc; int /*<<< orphan*/  matchFinderBase; int /*<<< orphan*/  matchFinderMt; } ;
typedef  int /*<<< orphan*/  ISzAllocPtr ;
typedef  TYPE_1__ CLzmaEnc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC4(CLzmaEnc *p, ISzAllocPtr alloc, ISzAllocPtr allocBig)
{
  #ifndef _7ZIP_ST
  FUNC1(&p->matchFinderMt, allocBig);
  #endif
  
  FUNC2(&p->matchFinderBase, allocBig);
  FUNC0(p, alloc);
  FUNC3(&p->rc, alloc);
}