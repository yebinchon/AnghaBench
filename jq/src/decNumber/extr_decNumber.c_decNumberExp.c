
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


typedef scalar_t__ uInt ;
struct TYPE_23__ {scalar_t__ digits; } ;
typedef TYPE_1__ decNumber ;
struct TYPE_24__ {scalar_t__ digits; int extended; } ;
typedef TYPE_2__ decContext ;


 int DECUNUSED ;
 int decCheckInexact (TYPE_1__*,TYPE_2__*) ;
 int decCheckMath (TYPE_1__ const*,TYPE_2__*,scalar_t__*) ;
 scalar_t__ decCheckOperands (TYPE_1__*,int ,TYPE_1__ const*,TYPE_2__*) ;
 int decExpOp (TYPE_1__*,TYPE_1__ const*,TYPE_2__*,scalar_t__*) ;
 TYPE_1__* decRoundOperand (TYPE_1__ const*,TYPE_2__*,scalar_t__*) ;
 int decStatus (TYPE_1__*,scalar_t__,TYPE_2__*) ;
 int free (TYPE_1__*) ;

decNumber * decNumberExp(decNumber *res, const decNumber *rhs,
                         decContext *set) {
  uInt status=0;
  if (!decCheckMath(rhs, set, &status)) do {
    decExpOp(res, rhs, set, &status);
    } while(0);





  if (status!=0) decStatus(res, status, set);



  return res;
  }
