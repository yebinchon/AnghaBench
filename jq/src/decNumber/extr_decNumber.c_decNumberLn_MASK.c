#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uInt ;
struct TYPE_24__ {scalar_t__ digits; } ;
typedef  TYPE_1__ decNumber ;
struct TYPE_25__ {scalar_t__ digits; int /*<<< orphan*/  extended; } ;
typedef  TYPE_2__ decContext ;

/* Variables and functions */
 int /*<<< orphan*/  DECUNUSED ; 
 int /*<<< orphan*/  DEC_Invalid_operation ; 
 scalar_t__ FUNC0 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__ const*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_1__ const*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_1__ const*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (TYPE_1__ const*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

decNumber * FUNC8(decNumber *res, const decNumber *rhs,
                        decContext *set) {
  uInt status=0;                   // accumulator
  #if DECSUBSET
  decNumber *allocrhs=NULL;        // non-NULL if rounded rhs allocated
  #endif

  #if DECCHECK
  if (decCheckOperands(res, DECUNUSED, rhs, set)) return res;
  #endif

  // Check restrictions; this is a math function; if not violated
  // then carry out the operation.
  if (!FUNC2(rhs, set, &status)) do { // protect allocation
    #if DECSUBSET
    if (!set->extended) {
      // reduce operand and set lostDigits status, as needed
      if (rhs->digits>set->digits) {
        allocrhs=decRoundOperand(rhs, set, &status);
        if (allocrhs==NULL) break;
        rhs=allocrhs;
        }
      // special check in subset for rhs=0
      if (ISZERO(rhs)) {                // +/- zeros -> error
        status|=DEC_Invalid_operation;
        break;}
      } // extended=0
    #endif
    FUNC4(res, rhs, set, &status);
    } while(0);                         // end protected

  #if DECSUBSET
  if (allocrhs !=NULL) free(allocrhs);  // drop any storage used
  #endif
  // apply significant status
  if (status!=0) FUNC6(res, status, set);
  #if DECCHECK
  decCheckInexact(res, set);
  #endif
  return res;
  }