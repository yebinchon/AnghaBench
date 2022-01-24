#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UInt64 ;
struct TYPE_4__ {int /*<<< orphan*/  cs; } ;
struct TYPE_5__ {scalar_t__ interruptIndex; TYPE_1__ mtProgress; scalar_t__ needInterrupt; } ;
typedef  TYPE_2__ CMtDec ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ True ; 

__attribute__((used)) static void FUNC2(CMtDec *p, UInt64 interruptIndex)
{
  FUNC0(&p->mtProgress.cs);
  if (!p->needInterrupt || interruptIndex < p->interruptIndex)
  {
    p->interruptIndex = interruptIndex;
    p->needInterrupt = True;
  }
  FUNC1(&p->mtProgress.cs);
}