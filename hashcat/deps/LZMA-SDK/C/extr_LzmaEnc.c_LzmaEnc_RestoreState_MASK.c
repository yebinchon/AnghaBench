#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int UInt32 ;
struct TYPE_5__ {int /*<<< orphan*/  litProbs; int /*<<< orphan*/  repLenProbs; int /*<<< orphan*/  lenProbs; int /*<<< orphan*/  state; } ;
struct TYPE_6__ {int lclp; int /*<<< orphan*/  litProbs; int /*<<< orphan*/  repLenProbs; int /*<<< orphan*/  lenProbs; int /*<<< orphan*/  state; TYPE_1__ saveState; } ;
typedef  TYPE_1__ CSaveState ;
typedef  int /*<<< orphan*/  CLzmaProb ;
typedef  scalar_t__ CLzmaEncHandle ;
typedef  TYPE_2__ CLzmaEnc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_1__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  isMatch ; 
 int /*<<< orphan*/  isRep ; 
 int /*<<< orphan*/  isRep0Long ; 
 int /*<<< orphan*/  isRepG0 ; 
 int /*<<< orphan*/  isRepG1 ; 
 int /*<<< orphan*/  isRepG2 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  posAlignEncoder ; 
 int /*<<< orphan*/  posEncoders ; 
 int /*<<< orphan*/  posSlotEncoder ; 
 int /*<<< orphan*/  reps ; 

void FUNC2(CLzmaEncHandle pp)
{
  CLzmaEnc *dest = (CLzmaEnc *)pp;
  const CSaveState *p = &dest->saveState;

  dest->state = p->state;

  dest->lenProbs = p->lenProbs;
  dest->repLenProbs = p->repLenProbs;
  
  FUNC0(dest, p, reps);
  
  FUNC0(dest, p, posAlignEncoder);
  FUNC0(dest, p, isRep);
  FUNC0(dest, p, isRepG0);
  FUNC0(dest, p, isRepG1);
  FUNC0(dest, p, isRepG2);
  FUNC0(dest, p, isMatch);
  FUNC0(dest, p, isRep0Long);
  FUNC0(dest, p, posSlotEncoder);
  FUNC0(dest, p, posEncoders);

  FUNC1(dest->litProbs, p->litProbs, ((UInt32)0x300 << dest->lclp) * sizeof(CLzmaProb));
}