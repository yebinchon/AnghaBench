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
typedef  int UInt32 ;
typedef  int /*<<< orphan*/  CProbPrice ;
typedef  int /*<<< orphan*/  CLzmaProb ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const,unsigned int) ; 

__attribute__((used)) static UInt32 FUNC1(const CLzmaProb *probs, UInt32 sym, const CProbPrice *ProbPrices)
{
  UInt32 price = 0;
  sym |= 0x100;
  do
  {
    unsigned bit = sym & 1;
    sym >>= 1;
    price += FUNC0(probs[sym], bit);
  }
  while (sym >= 2);
  return price;
}