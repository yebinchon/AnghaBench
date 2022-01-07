
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uInt ;
struct TYPE_4__ {int bits; } ;
typedef TYPE_1__ decNumber ;
typedef int decContext ;


 int DECNAN ;
 int DEC_NaNs ;
 int DEC_sNaN ;
 int decContextSetStatus (int *,int) ;
 int decNumberZero (TYPE_1__*) ;

__attribute__((used)) static void decStatus(decNumber *dn, uInt status, decContext *set) {
  if (status & DEC_NaNs) {

    if (status & DEC_sNaN) status&=~DEC_sNaN;
     else {
      decNumberZero(dn);
      dn->bits=DECNAN;
      }
    }
  decContextSetStatus(set, status);
  return;
  }
