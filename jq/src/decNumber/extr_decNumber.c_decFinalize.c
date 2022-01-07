
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int uInt ;
struct TYPE_15__ {scalar_t__ digits; scalar_t__ exponent; int* lsu; } ;
typedef TYPE_1__ decNumber ;
struct TYPE_16__ {scalar_t__ emin; scalar_t__ emax; scalar_t__ digits; int clamp; } ;
typedef TYPE_2__ decContext ;
typedef scalar_t__ Int ;


 scalar_t__ BADINT ;
 int DEC_Clamped ;
 int DEC_Insufficient_storage ;
 int ISZERO (TYPE_1__*) ;
 int decApplyRound (TYPE_1__*,TYPE_2__*,scalar_t__,int *) ;
 scalar_t__ decCompare (TYPE_1__*,TYPE_1__*,int) ;
 int decNumberZero (TYPE_1__*) ;
 int decSetOverflow (TYPE_1__*,TYPE_2__*,int *) ;
 int decSetSubnormal (TYPE_1__*,TYPE_2__*,scalar_t__*,int *) ;
 scalar_t__ decShiftToMost (int*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void decFinalize(decNumber *dn, decContext *set, Int *residue,
                        uInt *status) {
  Int shift;
  Int tinyexp=set->emin-dn->digits+1;







  if (dn->exponent<=tinyexp) {
    Int comp;
    decNumber nmin;

    if (dn->exponent<tinyexp) {

      decSetSubnormal(dn, set, residue, status);
      return;
      }

    decNumberZero(&nmin);
    nmin.lsu[0]=1;
    nmin.exponent=set->emin;
    comp=decCompare(dn, &nmin, 1);
    if (comp==BADINT) {
      *status|=DEC_Insufficient_storage;
      return;
      }
    if (*residue<0 && comp==0) {
      decApplyRound(dn, set, *residue, status);
      decSetSubnormal(dn, set, residue, status);
      return;
      }
    }


  if (*residue!=0) decApplyRound(dn, set, *residue, status);


  if (dn->exponent<=set->emax-set->digits+1) return;



  if (dn->exponent>set->emax-dn->digits+1) {
    decSetOverflow(dn, set, status);
    return;
    }

  if (!set->clamp) return;


  shift=dn->exponent-(set->emax-set->digits+1);


  if (!ISZERO(dn)) {
    dn->digits=decShiftToMost(dn->lsu, dn->digits, shift);
    }
  dn->exponent-=shift;
  *status|=DEC_Clamped;
  return;
  }
