#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int uInt ;
struct TYPE_19__ {int bits; int* lsu; scalar_t__ exponent; } ;
typedef  TYPE_1__ decNumber ;
struct TYPE_20__ {int /*<<< orphan*/  round; } ;
typedef  TYPE_2__ decContext ;

/* Variables and functions */
 int DECINF ; 
 int DECNEG ; 
 int /*<<< orphan*/  DECUNUSED ; 
 int DEC_Invalid_operation ; 
 scalar_t__ DEC_MIN_EMIN ; 
 int /*<<< orphan*/  DEC_ROUND_FLOOR ; 
 int DEC_sNaN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_1__ const*,TYPE_1__*,TYPE_2__*,int,int*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_1__ const*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,TYPE_2__*) ; 

decNumber * FUNC5(decNumber *res, const decNumber *rhs,
                               decContext *set) {
  decNumber dtiny;                           // constant
  decContext workset=*set;                   // work
  uInt status=0;                             // accumulator
  #if DECCHECK
  if (decCheckOperands(res, DECUNUSED, rhs, set)) return res;
  #endif

  // +Infinity is the special case
  if ((rhs->bits&(DECINF|DECNEG))==DECINF) {
    FUNC3(res, set);                // is +ve
    // there is no status to set
    return res;
    }
  FUNC2(&dtiny);                     // start with 0
  dtiny.lsu[0]=1;                            // make number that is ..
  dtiny.exponent=DEC_MIN_EMIN-1;             // .. smaller than tiniest
  workset.round=DEC_ROUND_FLOOR;
  FUNC0(res, rhs, &dtiny, &workset, DECNEG, &status);
  status&=DEC_Invalid_operation|DEC_sNaN;    // only sNaN Invalid please
  if (status!=0) FUNC4(res, status, set);
  return res;
  }