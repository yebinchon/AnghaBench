
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int uByte ;
struct TYPE_10__ {int bits; } ;
typedef TYPE_1__ decNumber ;


 int DECNEG ;
 int DECUNCONT ;
 int DECUNUSED ;
 scalar_t__ decCheckOperands (TYPE_1__*,int ,TYPE_1__ const*,int ) ;
 int decNumberCopy (TYPE_1__*,TYPE_1__ const*) ;

decNumber * decNumberCopySign(decNumber *res, const decNumber *lhs,
                              const decNumber *rhs) {
  uByte sign;



  sign=rhs->bits & DECNEG;
  decNumberCopy(res, lhs);
  res->bits&=~DECNEG;
  res->bits|=sign;
  return res;
  }
