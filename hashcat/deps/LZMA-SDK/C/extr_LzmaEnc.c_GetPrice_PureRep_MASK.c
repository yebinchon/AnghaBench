#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UInt32 ;
struct TYPE_3__ {int /*<<< orphan*/ * isRepG2; scalar_t__* isRepG1; scalar_t__** isRep0Long; scalar_t__* isRepG0; } ;
typedef  TYPE_1__ CLzmaEnc ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 

__attribute__((used)) static UInt32 FUNC3(const CLzmaEnc *p, unsigned repIndex, size_t state, size_t posState)
{
  UInt32 price;
  UInt32 prob = p->isRepG0[state];
  if (repIndex == 0)
  {
    price = FUNC1(prob);
    price += FUNC2(p->isRep0Long[state][posState]);
  }
  else
  {
    price = FUNC2(prob);
    prob = p->isRepG1[state];
    if (repIndex == 1)
      price += FUNC1(prob);
    else
    {
      price += FUNC2(prob);
      price += FUNC0(p->isRepG2[state], repIndex - 2);
    }
  }
  return price;
}