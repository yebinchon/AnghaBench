
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t digits; scalar_t__* lsu; } ;
typedef TYPE_1__ decNumber ;
typedef scalar_t__ Unit ;
typedef int LI ;
typedef size_t Int ;


 int D2U (size_t) ;
 size_t DECDPUN ;
 size_t MSUDIGITS (size_t) ;
 size_t decGetDigits (scalar_t__*,int) ;
 scalar_t__* powers ;
 int printf (char*,int ,int ) ;

__attribute__((used)) static decNumber *decDecap(decNumber *dn, Int drop) {
  Unit *msu;
  Int cut;
  if (drop>=dn->digits) {





    dn->lsu[0]=0;
    dn->digits=1;
    return dn;
    }
  msu=dn->lsu+D2U(dn->digits-drop)-1;
  cut=MSUDIGITS(dn->digits-drop);
  if (cut!=DECDPUN) *msu%=powers[cut];

  dn->digits=decGetDigits(dn->lsu, msu-dn->lsu+1);
  return dn;
  }
