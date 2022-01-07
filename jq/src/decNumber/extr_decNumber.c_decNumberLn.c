
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


typedef int uInt ;
struct TYPE_24__ {scalar_t__ digits; } ;
typedef TYPE_1__ decNumber ;
struct TYPE_25__ {scalar_t__ digits; int extended; } ;
typedef TYPE_2__ decContext ;


 int DECUNUSED ;
 int DEC_Invalid_operation ;
 scalar_t__ ISZERO (TYPE_1__ const*) ;
 int decCheckInexact (TYPE_1__*,TYPE_2__*) ;
 int decCheckMath (TYPE_1__ const*,TYPE_2__*,int *) ;
 scalar_t__ decCheckOperands (TYPE_1__*,int ,TYPE_1__ const*,TYPE_2__*) ;
 int decLnOp (TYPE_1__*,TYPE_1__ const*,TYPE_2__*,int *) ;
 TYPE_1__* decRoundOperand (TYPE_1__ const*,TYPE_2__*,int *) ;
 int decStatus (TYPE_1__*,int ,TYPE_2__*) ;
 int free (TYPE_1__*) ;

decNumber * decNumberLn(decNumber *res, const decNumber *rhs,
                        decContext *set) {
  uInt status=0;
  if (!decCheckMath(rhs, set, &status)) do {
    decLnOp(res, rhs, set, &status);
    } while(0);





  if (status!=0) decStatus(res, status, set);



  return res;
  }
