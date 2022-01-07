
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int digits; scalar_t__* lsu; scalar_t__ exponent; scalar_t__ bits; } ;
typedef TYPE_1__ decNumber ;


 int DECUNCONT ;
 int DECUNUSED ;
 scalar_t__ decCheckOperands (TYPE_1__*,int ,int ,int ) ;

decNumber * decNumberZero(decNumber *dn) {





  dn->bits=0;
  dn->exponent=0;
  dn->digits=1;
  dn->lsu[0]=0;
  return dn;
  }
