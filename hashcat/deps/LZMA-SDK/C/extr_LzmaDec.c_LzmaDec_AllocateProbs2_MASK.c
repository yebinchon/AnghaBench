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
typedef  int UInt32 ;
struct TYPE_4__ {int numProbs; int /*<<< orphan*/ * probs; int /*<<< orphan*/ * probs_1664; } ;
typedef  int /*<<< orphan*/  SRes ;
typedef  int /*<<< orphan*/  ISzAllocPtr ;
typedef  int /*<<< orphan*/  CLzmaProps ;
typedef  int /*<<< orphan*/  CLzmaProb ;
typedef  TYPE_1__ CLzmaDec ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  SZ_ERROR_MEM ; 
 int /*<<< orphan*/  SZ_OK ; 

__attribute__((used)) static SRes FUNC3(CLzmaDec *p, const CLzmaProps *propNew, ISzAllocPtr alloc)
{
  UInt32 numProbs = FUNC2(propNew);
  if (!p->probs || numProbs != p->numProbs)
  {
    FUNC1(p, alloc);
    p->probs = (CLzmaProb *)FUNC0(alloc, numProbs * sizeof(CLzmaProb));
    if (!p->probs)
      return SZ_ERROR_MEM;
    p->probs_1664 = p->probs + 1664;
    p->numProbs = numProbs;
  }
  return SZ_OK;
}