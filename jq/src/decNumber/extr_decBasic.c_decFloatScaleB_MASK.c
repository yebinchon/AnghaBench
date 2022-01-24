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
typedef  int uInt ;
typedef  int /*<<< orphan*/  decFloat ;
typedef  int /*<<< orphan*/  decContext ;
typedef  int Int ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*) ; 
 int FUNC4 (int /*<<< orphan*/  const*,int) ; 
 int* DPD2BIN ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int SCALEBMAX ; 
 int FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

decFloat * FUNC11(decFloat *result,
                          const decFloat *dfl, const decFloat *dfr,
                          decContext *set) {
  uInt digits;                          // work
  Int  expr;                            // dfr as an Int

  if (FUNC2(dfl)||FUNC2(dfr)) return FUNC10(result, dfl, dfr, set);
  if (!FUNC1(dfr)) return FUNC9(result, set);
  digits=FUNC6(dfr);                // calculate digits

  #if DOUBLE
  if (digits>3) return decInvalid(result, set);   // definitely out of range
  expr=DPD2BIN[DFWORD(dfr, 1)&0x3ff];             // must be in bottom declet
  #elif QUAD
  if (digits>5) return decInvalid(result, set);   // definitely out of range
  expr=DPD2BIN[DFWORD(dfr, 3)&0x3ff]              // in bottom 2 declets ..
      +DPD2BIN[(DFWORD(dfr, 3)>>10)&0x3ff]*1000;  // ..
  #endif
  if (expr>SCALEBMAX) return FUNC9(result, set);  // oops
  // [from now on no error possible]
  if (FUNC0(dfl)) return FUNC8(result, dfl);   // canonical
  if (FUNC3(dfr)) expr=-expr;
  // dfl is finite and expr is valid
  *result=*dfl;                              // copy to target
  return FUNC7(result, set, FUNC5(result)+expr);
  }