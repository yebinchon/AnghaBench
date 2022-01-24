#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ pos; scalar_t__ keepSizeAfter; scalar_t__ streamPos; scalar_t__ cyclicBufferPos; scalar_t__ cyclicBufferSize; int /*<<< orphan*/  streamEndWasReached; } ;
typedef  TYPE_1__ CMatchFinder ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ kMaxValForNormalize ; 

__attribute__((used)) static void FUNC3(CMatchFinder *p)
{
  if (p->pos == kMaxValForNormalize)
    FUNC1(p);
  if (!p->streamEndWasReached && p->keepSizeAfter == p->streamPos - p->pos)
    FUNC0(p);
  if (p->cyclicBufferPos == p->cyclicBufferSize)
    p->cyclicBufferPos = 0;
  FUNC2(p);
}