
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_1__ ;


typedef int uInt ;
struct TYPE_17__ {int bits; int digits; } ;
typedef TYPE_1__ decNumber ;
typedef int decContext ;
typedef int bufb ;
typedef int bufa ;
typedef int Unit ;


 int COMPTOTAL ;
 int D2N (int ) ;
 int D2U (int ) ;
 int DECBUFFER ;
 int DECNEG ;
 int DEC_Insufficient_storage ;
 scalar_t__ decCheckOperands (TYPE_1__*,TYPE_1__ const*,TYPE_1__ const*,int *) ;
 int decCompareOp (TYPE_1__*,TYPE_1__ const*,TYPE_1__ const*,int *,int ,int*) ;
 int decNumberCopy (TYPE_1__*,TYPE_1__ const*) ;
 scalar_t__ decNumberIsNegative (TYPE_1__ const*) ;
 int decStatus (TYPE_1__*,int,int *) ;
 int free (TYPE_1__*) ;
 scalar_t__ malloc (int) ;

decNumber * decNumberCompareTotalMag(decNumber *res, const decNumber *lhs,
                                     const decNumber *rhs, decContext *set) {
  uInt status=0;
  uInt needbytes;
  decNumber bufa[D2N(DECBUFFER+1)];
  decNumber *allocbufa=((void*)0);
  decNumber bufb[D2N(DECBUFFER+1)];
  decNumber *allocbufb=((void*)0);
  decNumber *a, *b;





  do {

    if (decNumberIsNegative(lhs)) {
      a=bufa;
      needbytes=sizeof(decNumber)+(D2U(lhs->digits)-1)*sizeof(Unit);
      if (needbytes>sizeof(bufa)) {
        allocbufa=(decNumber *)malloc(needbytes);
        if (allocbufa==((void*)0)) {
          status|=DEC_Insufficient_storage;
          break;}
        a=allocbufa;
        }
      decNumberCopy(a, lhs);
      a->bits&=~DECNEG;
      lhs=a;
      }
    if (decNumberIsNegative(rhs)) {
      b=bufb;
      needbytes=sizeof(decNumber)+(D2U(rhs->digits)-1)*sizeof(Unit);
      if (needbytes>sizeof(bufb)) {
        allocbufb=(decNumber *)malloc(needbytes);
        if (allocbufb==((void*)0)) {
          status|=DEC_Insufficient_storage;
          break;}
        b=allocbufb;
        }
      decNumberCopy(b, rhs);
      b->bits&=~DECNEG;
      rhs=b;
      }
    decCompareOp(res, lhs, rhs, set, COMPTOTAL, &status);
    } while(0);

  if (allocbufa!=((void*)0)) free(allocbufa);
  if (allocbufb!=((void*)0)) free(allocbufb);
  if (status!=0) decStatus(res, status, set);
  return res;
  }
