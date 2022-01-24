#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int bits; scalar_t__ exponent; int /*<<< orphan*/  digits; int /*<<< orphan*/  lsu; } ;
typedef  TYPE_1__ decNumber ;
typedef  int Int ;
typedef  scalar_t__ Flag ;

/* Variables and functions */
 int BADINT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int DECINF ; 
 scalar_t__ FUNC1 (TYPE_1__ const*) ; 
 scalar_t__ FUNC2 (TYPE_1__ const*) ; 
 scalar_t__ FUNC3 (TYPE_1__ const*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static Int FUNC5(const decNumber *lhs, const decNumber *rhs,
                      Flag abs) {
  Int   result;                    // result value
  Int   sigr;                      // rhs signum
  Int   compare;                   // work

  result=1;                                  // assume signum(lhs)
  if (FUNC1(lhs)) result=0;
  if (abs) {
    if (FUNC1(rhs)) return result;          // LHS wins or both 0
    // RHS is non-zero
    if (result==0) return -1;                // LHS is 0; RHS wins
    // [here, both non-zero, result=1]
    }
   else {                                    // signs matter
    if (result && FUNC3(lhs)) result=-1;
    sigr=1;                                  // compute signum(rhs)
    if (FUNC1(rhs)) sigr=0;
     else if (FUNC3(rhs)) sigr=-1;
    if (result > sigr) return +1;            // L > R, return 1
    if (result < sigr) return -1;            // L < R, return -1
    if (result==0) return 0;                   // both 0
    }

  // signums are the same; both are non-zero
  if ((lhs->bits | rhs->bits) & DECINF) {    // one or more infinities
    if (FUNC2(rhs)) {
      if (FUNC2(lhs)) result=0;// both infinite
       else result=-result;                  // only rhs infinite
      }
    return result;
    }
  // must compare the coefficients, allowing for exponents
  if (lhs->exponent>rhs->exponent) {         // LHS exponent larger
    // swap sides, and sign
    const decNumber *temp=lhs;
    lhs=rhs;
    rhs=temp;
    result=-result;
    }
  compare=FUNC4(lhs->lsu, FUNC0(lhs->digits),
                         rhs->lsu, FUNC0(rhs->digits),
                         rhs->exponent-lhs->exponent);
  if (compare!=BADINT) compare*=result;      // comparison succeeded
  return compare;
  }