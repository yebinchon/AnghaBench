#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int uInt ;
struct TYPE_17__ {int /*<<< orphan*/  bits; int /*<<< orphan*/  digits; } ;
typedef  TYPE_1__ decNumber ;
typedef  int /*<<< orphan*/  decContext ;
typedef  int /*<<< orphan*/  bufb ;
typedef  int /*<<< orphan*/  bufa ;
typedef  int /*<<< orphan*/  Unit ;

/* Variables and functions */
 int /*<<< orphan*/  COMPTOTAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DECBUFFER ; 
 int /*<<< orphan*/  DECNEG ; 
 int DEC_Insufficient_storage ; 
 scalar_t__ FUNC2 (TYPE_1__*,TYPE_1__ const*,TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__ const*,TYPE_1__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_1__ const*) ; 
 scalar_t__ FUNC5 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (int) ; 

decNumber * FUNC9(decNumber *res, const decNumber *lhs,
                                     const decNumber *rhs, decContext *set) {
  uInt status=0;                   // accumulator
  uInt needbytes;                  // for space calculations
  decNumber bufa[FUNC0(DECBUFFER+1)];// +1 in case DECBUFFER=0
  decNumber *allocbufa=NULL;       // -> allocated bufa, iff allocated
  decNumber bufb[FUNC0(DECBUFFER+1)];
  decNumber *allocbufb=NULL;       // -> allocated bufb, iff allocated
  decNumber *a, *b;                // temporary pointers

  #if DECCHECK
  if (decCheckOperands(res, lhs, rhs, set)) return res;
  #endif

  do {                                  // protect allocated storage
    // if either is negative, take a copy and absolute
    if (FUNC5(lhs)) {     // lhs<0
      a=bufa;
      needbytes=sizeof(decNumber)+(FUNC1(lhs->digits)-1)*sizeof(Unit);
      if (needbytes>sizeof(bufa)) {     // need malloc space
        allocbufa=(decNumber *)FUNC8(needbytes);
        if (allocbufa==NULL) {          // hopeless -- abandon
          status|=DEC_Insufficient_storage;
          break;}
        a=allocbufa;                    // use the allocated space
        }
      FUNC4(a, lhs);            // copy content
      a->bits&=~DECNEG;                 // .. and clear the sign
      lhs=a;                            // use copy from here on
      }
    if (FUNC5(rhs)) {     // rhs<0
      b=bufb;
      needbytes=sizeof(decNumber)+(FUNC1(rhs->digits)-1)*sizeof(Unit);
      if (needbytes>sizeof(bufb)) {     // need malloc space
        allocbufb=(decNumber *)FUNC8(needbytes);
        if (allocbufb==NULL) {          // hopeless -- abandon
          status|=DEC_Insufficient_storage;
          break;}
        b=allocbufb;                    // use the allocated space
        }
      FUNC4(b, rhs);            // copy content
      b->bits&=~DECNEG;                 // .. and clear the sign
      rhs=b;                            // use copy from here on
      }
    FUNC3(res, lhs, rhs, set, COMPTOTAL, &status);
    } while(0);                         // end protected

  if (allocbufa!=NULL) FUNC7(allocbufa); // drop any storage used
  if (allocbufb!=NULL) FUNC7(allocbufb); // ..
  if (status!=0) FUNC6(res, status, set);
  return res;
  }