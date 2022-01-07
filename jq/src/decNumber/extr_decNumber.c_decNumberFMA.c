
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_2__ ;
typedef struct TYPE_31__ TYPE_1__ ;


typedef int uInt ;
struct TYPE_31__ {int bits; scalar_t__ digits; } ;
typedef TYPE_1__ decNumber ;
struct TYPE_32__ {scalar_t__ digits; int emin; int emax; int extended; } ;
typedef TYPE_2__ decContext ;
typedef int bufa ;
typedef int Unit ;
typedef int LI ;


 int D2N (int) ;
 int D2U (scalar_t__) ;
 int DECBUFFER ;
 int DECNAN ;
 TYPE_1__ const* DECUNUSED ;
 int DEC_Insufficient_storage ;
 int DEC_Invalid_operation ;
 int DEC_MAX_EMAX ;
 int DEC_MIN_EMIN ;
 int DEC_sNaN ;
 int decAddOp (TYPE_1__*,TYPE_1__*,TYPE_1__ const*,TYPE_2__*,int ,int*) ;
 int decCheckInexact (TYPE_1__*,TYPE_2__*) ;
 scalar_t__ decCheckMath (TYPE_1__ const*,TYPE_2__*,int*) ;
 scalar_t__ decCheckOperands (TYPE_1__*,TYPE_1__ const*,TYPE_1__ const*,TYPE_2__*) ;
 int decMultiplyOp (TYPE_1__*,TYPE_1__ const*,TYPE_1__ const*,TYPE_2__*,int*) ;
 int decNumberIsSpecial (TYPE_1__ const*) ;
 int decNumberZero (TYPE_1__*) ;
 int decStatus (TYPE_1__*,int,TYPE_2__*) ;
 int free (TYPE_1__*) ;
 scalar_t__ malloc (int) ;
 int printf (char*,int ) ;

decNumber * decNumberFMA(decNumber *res, const decNumber *lhs,
                         const decNumber *rhs, const decNumber *fhs,
                         decContext *set) {
  uInt status=0;
  decContext dcmul;
  uInt needbytes;
  decNumber bufa[D2N(DECBUFFER*2+1)];
  decNumber *allocbufa=((void*)0);
  decNumber *acc;
  decNumber dzero;






  do {






    if ((!decNumberIsSpecial(lhs) && decCheckMath(lhs, set, &status))
     || (!decNumberIsSpecial(rhs) && decCheckMath(rhs, set, &status))
     || (!decNumberIsSpecial(fhs) && decCheckMath(fhs, set, &status))) break;

    dcmul=*set;
    dcmul.digits=lhs->digits+rhs->digits;

    dcmul.emax=DEC_MAX_EMAX;
    dcmul.emin=DEC_MIN_EMIN;

    acc=bufa;
    needbytes=sizeof(decNumber)+(D2U(dcmul.digits)-1)*sizeof(Unit);
    if (needbytes>sizeof(bufa)) {
      allocbufa=(decNumber *)malloc(needbytes);
      if (allocbufa==((void*)0)) {
        status|=DEC_Insufficient_storage;
        break;}
      acc=allocbufa;
      }


    decMultiplyOp(acc, lhs, rhs, &dcmul, &status);






    if ((status&DEC_Invalid_operation)!=0) {
      if (!(status&DEC_sNaN)) {
        decNumberZero(res);
        res->bits=DECNAN;
        break;
        }
      decNumberZero(&dzero);
      fhs=&dzero;
      }






    decAddOp(res, acc, fhs, set, 0, &status);
    } while(0);

  if (allocbufa!=((void*)0)) free(allocbufa);
  if (status!=0) decStatus(res, status, set);



  return res;
  }
