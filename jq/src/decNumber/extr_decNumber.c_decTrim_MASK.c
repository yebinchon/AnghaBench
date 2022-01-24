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
typedef  size_t uInt ;
struct TYPE_8__ {int bits; int* lsu; int exponent; int digits; } ;
typedef  TYPE_1__ decNumber ;
struct TYPE_9__ {int emax; int digits; scalar_t__ clamp; } ;
typedef  TYPE_2__ decContext ;
typedef  size_t Unit ;
typedef  int Int ;
typedef  int /*<<< orphan*/  Flag ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t DECDPUN ; 
 int DECSPECIAL ; 
 int /*<<< orphan*/  DECUNCONT ; 
 int /*<<< orphan*/  DECUNUSED ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 size_t FUNC2 (size_t,size_t) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (size_t*,int /*<<< orphan*/ ,int) ; 
 size_t* powers ; 

__attribute__((used)) static decNumber * FUNC5(decNumber *dn, decContext *set, Flag all,
                           Flag noclamp, Int *dropped) {
  Int   d, exp;                    // work
  uInt  cut;                       // ..
  Unit  *up;                       // -> current Unit

  #if DECCHECK
  if (decCheckOperands(dn, DECUNUSED, DECUNUSED, DECUNCONT)) return dn;
  #endif

  *dropped=0;                           // assume no zeros dropped
  if ((dn->bits & DECSPECIAL)           // fast exit if special ..
    || (*dn->lsu & 0x01)) return dn;    // .. or odd
  if (FUNC1(dn)) {                     // .. or 0
    dn->exponent=0;                     // (sign is preserved)
    return dn;
    }

  // have a finite number which is even
  exp=dn->exponent;
  cut=1;                           // digit (1-DECDPUN) in Unit
  up=dn->lsu;                      // -> current Unit
  for (d=0; d<dn->digits-1; d++) { // [don't strip the final digit]
    // slice by powers
    #if DECDPUN<=4
      uInt quot=FUNC2(*up, cut);
      if ((*up-quot*powers[cut])!=0) break;  // found non-0 digit
    #else
      if (*up%powers[cut]!=0) break;         // found non-0 digit
    #endif
    // have a trailing 0
    if (!all) {                    // trimming
      // [if exp>0 then all trailing 0s are significant for trim]
      if (exp<=0) {                // if digit might be significant
        if (exp==0) break;         // then quit
        exp++;                     // next digit might be significant
        }
      }
    cut++;                         // next power
    if (cut>DECDPUN) {             // need new Unit
      up++;
      cut=1;
      }
    } // d
  if (d==0) return dn;             // none to drop

  // may need to limit drop if clamping
  if (set->clamp && !noclamp) {
    Int maxd=set->emax-set->digits+1-dn->exponent;
    if (maxd<=0) return dn;        // nothing possible
    if (d>maxd) d=maxd;
    }

  // effect the drop
  FUNC4(dn->lsu, FUNC0(dn->digits), d);
  dn->exponent+=d;                 // maintain numerical value
  dn->digits-=d;                   // new length
  *dropped=d;                      // report the count
  return dn;
  }