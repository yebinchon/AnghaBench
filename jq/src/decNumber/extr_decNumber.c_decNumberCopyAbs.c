
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int bits; } ;
typedef TYPE_1__ decNumber ;


 int DECNEG ;
 int DECUNCONT ;
 int DECUNUSED ;
 scalar_t__ decCheckOperands (TYPE_1__*,int ,TYPE_1__ const*,int ) ;
 int decNumberCopy (TYPE_1__*,TYPE_1__ const*) ;

decNumber * decNumberCopyAbs(decNumber *res, const decNumber *rhs) {



  decNumberCopy(res, rhs);
  res->bits&=~DECNEG;
  return res;
  }
