#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uInt ;
struct TYPE_15__ {scalar_t__ digits; scalar_t__ exponent; int* lsu; } ;
typedef  TYPE_1__ decNumber ;
struct TYPE_16__ {scalar_t__ emin; scalar_t__ emax; scalar_t__ digits; int /*<<< orphan*/  clamp; } ;
typedef  TYPE_2__ decContext ;
typedef  scalar_t__ Int ;

/* Variables and functions */
 scalar_t__ BADINT ; 
 int /*<<< orphan*/  DEC_Clamped ; 
 int /*<<< orphan*/  DEC_Insufficient_storage ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_2__*,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_2__*,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC7(decNumber *dn, decContext *set, Int *residue,
                        uInt *status) {
  Int shift;                            // shift needed if clamping
  Int tinyexp=set->emin-dn->digits+1;   // precalculate subnormal boundary

  // Must be careful, here, when checking the exponent as the
  // adjusted exponent could overflow 31 bits [because it may already
  // be up to twice the expected].

  // First test for subnormal.  This must be done before any final
  // round as the result could be rounded to Nmin or 0.
  if (dn->exponent<=tinyexp) {          // prefilter
    Int comp;
    decNumber nmin;
    // A very nasty case here is dn == Nmin and residue<0
    if (dn->exponent<tinyexp) {
      // Go handle subnormals; this will apply round if needed.
      FUNC5(dn, set, residue, status);
      return;
      }
    // Equals case: only subnormal if dn=Nmin and negative residue
    FUNC3(&nmin);
    nmin.lsu[0]=1;
    nmin.exponent=set->emin;
    comp=FUNC2(dn, &nmin, 1);                // (signless compare)
    if (comp==BADINT) {                           // oops
      *status|=DEC_Insufficient_storage;          // abandon...
      return;
      }
    if (*residue<0 && comp==0) {                  // neg residue and dn==Nmin
      FUNC1(dn, set, *residue, status);   // might force down
      FUNC5(dn, set, residue, status);
      return;
      }
    }

  // now apply any pending round (this could raise overflow).
  if (*residue!=0) FUNC1(dn, set, *residue, status);

  // Check for overflow [redundant in the 'rare' case] or clamp
  if (dn->exponent<=set->emax-set->digits+1) return;   // neither needed


  // here when might have an overflow or clamp to do
  if (dn->exponent>set->emax-dn->digits+1) {           // too big
    FUNC4(dn, set, status);
    return;
    }
  // here when the result is normal but in clamp range
  if (!set->clamp) return;

  // here when need to apply the IEEE exponent clamp (fold-down)
  shift=dn->exponent-(set->emax-set->digits+1);

  // shift coefficient (if non-zero)
  if (!FUNC0(dn)) {
    dn->digits=FUNC6(dn->lsu, dn->digits, shift);
    }
  dn->exponent-=shift;   // adjust the exponent to match
  *status|=DEC_Clamped;  // and record the dirty deed
  return;
  }