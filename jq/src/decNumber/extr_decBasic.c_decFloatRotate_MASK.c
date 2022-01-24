#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uInt ;
typedef  int /*<<< orphan*/  uByte ;
typedef  int /*<<< orphan*/  decFloat ;
struct TYPE_8__ {int status; } ;
typedef  TYPE_1__ decContext ;
struct TYPE_9__ {int sign; int /*<<< orphan*/  exponent; int /*<<< orphan*/ * msd; int /*<<< orphan*/ * lsd; } ;
typedef  TYPE_2__ bcdnum ;
typedef  int Int ;

/* Variables and functions */
 int DECFLOAT_Sign ; 
 int DECPMAX ; 
 scalar_t__ DECWORDS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*) ; 
 int FUNC4 (int /*<<< orphan*/  const*,scalar_t__) ; 
 int* DPD2BIN ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*) ; 
 int PHALF ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_1__*) ; 
 int FUNC10 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

decFloat * FUNC15(decFloat *result,
                         const decFloat *dfl, const decFloat *dfr,
                         decContext *set) {
  Int rotate;                           // dfr as an Int
  uByte buf[DECPMAX+PHALF];             // coefficient + half
  uInt digits, savestat;                // work
  bcdnum num;                           // ..
  uByte *ub;                            // ..

  if (FUNC2(dfl)||FUNC2(dfr)) return FUNC13(result, dfl, dfr, set);
  if (!FUNC1(dfr)) return FUNC12(result, set);
  digits=FUNC10(dfr);                    // calculate digits
  if (digits>2) return FUNC12(result, set);  // definitely out of range
  rotate=DPD2BIN[FUNC4(dfr, DECWORDS-1)&0x3ff]; // is in bottom declet
  if (rotate>DECPMAX) return FUNC12(result, set); // too big
  // [from here on no error or status change is possible]
  if (FUNC0(dfl)) return FUNC11(result, dfl);  // canonical
  // handle no-rotate cases
  if (rotate==0 || rotate==DECPMAX) return FUNC8(result, dfl);
  // a real rotate is needed: 0 < rotate < DECPMAX
  // reduce the rotation to no more than half to reduce copying later
  // (for QUAD in fact half + 2 digits)
  if (FUNC3(dfr)) rotate=-rotate;
  if (FUNC7(rotate)>PHALF) {
    if (rotate<0) rotate=DECPMAX+rotate;
     else rotate=rotate-DECPMAX;
    }
  // now lay out the coefficient, leaving room to the right or the
  // left depending on the direction of rotation
  ub=buf;
  if (rotate<0) ub+=PHALF;    // rotate right, so space to left
  FUNC5(dfl, ub);
  // copy half the digits to left or right, and set num.msd
  if (rotate<0) {
    FUNC14(buf, buf+DECPMAX, PHALF);
    num.msd=buf+PHALF+rotate;
    }
   else {
    FUNC14(buf+DECPMAX, buf, PHALF);
    num.msd=buf+rotate;
    }
  // fill in rest of num
  num.lsd=num.msd+DECPMAX-1;
  num.sign=FUNC4(dfl, 0)&DECFLOAT_Sign;
  num.exponent=FUNC6(dfl);
  savestat=set->status;                 // record
  FUNC9(result, &num, set);
  set->status=savestat;                 // restore
  return result;
  }