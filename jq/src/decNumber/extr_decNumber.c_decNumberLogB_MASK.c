#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uInt ;
struct TYPE_25__ {int bits; scalar_t__ digits; scalar_t__ exponent; } ;
typedef  TYPE_1__ decNumber ;
struct TYPE_26__ {int digits; } ;
typedef  TYPE_2__ decContext ;
typedef  scalar_t__ Int ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int DECINF ; 
 int DECNEG ; 
 int /*<<< orphan*/  DECUNUSED ; 
 int /*<<< orphan*/  DEC_Division_by_zero ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_1__ const*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__ const*,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC5 (TYPE_1__ const*) ; 
 scalar_t__ FUNC6 (TYPE_1__ const*) ; 
 scalar_t__ FUNC7 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_2__*) ; 

decNumber * FUNC11(decNumber *res, const decNumber *rhs,
                          decContext *set) {
  uInt status=0;                   // accumulator

  #if DECCHECK
  if (decCheckOperands(res, DECUNUSED, rhs, set)) return res;
  #endif

  // NaNs as usual; Infinities return +Infinity; 0->oops
  if (FUNC6(rhs)) FUNC2(res, rhs, NULL, set, &status);
   else if (FUNC5(rhs)) FUNC3(res, rhs);
   else if (FUNC7(rhs)) {
    FUNC9(res);                 // prepare for Infinity
    res->bits=DECNEG|DECINF;            // -Infinity
    status|=DEC_Division_by_zero;       // as per 754
    }
   else { // finite non-zero
    Int ae=rhs->exponent+rhs->digits-1; // adjusted exponent
    if (set->digits>=10) FUNC4(res, ae);  // lay it out
     else {
      decNumber buft[FUNC0(10)];          // temporary number
      decNumber *t=buft;                // ..
      FUNC4(t, ae);        // lay it out
      FUNC8(res, t, set);       // round as necessary
      }
    }

  if (status!=0) FUNC10(res, status, set);
  return res;
  }