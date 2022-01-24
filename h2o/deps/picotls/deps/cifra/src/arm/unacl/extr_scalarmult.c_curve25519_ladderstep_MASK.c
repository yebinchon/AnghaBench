#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  fe25519 ;
struct TYPE_3__ {int /*<<< orphan*/  x0; int /*<<< orphan*/  zq; int /*<<< orphan*/  xq; int /*<<< orphan*/  zp; int /*<<< orphan*/  xp; int /*<<< orphan*/ * pZq; int /*<<< orphan*/ * pXq; int /*<<< orphan*/ * pZp; int /*<<< orphan*/ * pXp; } ;
typedef  TYPE_1__ ST_curve25519ladderstepWorkingState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(
    ST_curve25519ladderstepWorkingState* pState
)
{
    // Implements the "ladd-1987-m-3" differential-addition-and-doubling formulas
    // Source: 1987 Montgomery "Speeding the Pollard and elliptic curve methods of factorization", page 261,
    //         fifth and sixth displays, plus common-subexpression elimination.
    //
    // Notation from the explicit formulas database:
    // (X2,Z2) corresponds to (xp,zp),
    // (X3,Z3) corresponds to (xq,zq)
    // Result (X4,Z4) (X5,Z5) expected in (xp,zp) and (xq,zq)
    //
    // A = X2+Z2; AA = A^2; B = X2-Z2; BB = B^2; E = AA-BB; C = X3+Z3; D = X3-Z3;
    // DA = D*A; CB = C*B; t0 = DA+CB; t1 = t0^2; X5 = Z1*t1; t2 = DA-CB;
    // t3 = t2^2; Z5 = X1*t3; X4 = AA*BB; t4 = a24*E; t5 = BB+t4; Z4 = E*t5 ;
    //
    // Re-Ordered for using less temporaries.

    fe25519 t1, t2;

    #ifdef DH_SWAP_BY_POINTERS
    fe25519 *b1=pState->pXp; fe25519 *b2=pState->pZp;
    fe25519 *b3=pState->pXq; fe25519 *b4=pState->pZq;
    #else
    fe25519 *b1=&pState->xp; fe25519 *b2=&pState->zp;
    fe25519 *b3=&pState->xq; fe25519 *b4=&pState->zq;
    #endif

    fe25519 *b5= &t1; fe25519 *b6=&t2;

    FUNC0(b5,b1,b2); // A = X2+Z2
    FUNC4(b6,b1,b2); // B = X2-Z2
    FUNC0(b1,b3,b4); // C = X3+Z3
    FUNC4(b2,b3,b4); // D = X3-Z3
    FUNC2(b3,b2,b5); // DA= D*A
    FUNC2(b2,b1,b6); // CB= C*B
    FUNC0(b1,b2,b3); // T0= DA+CB
    FUNC4(b4,b3,b2); // T2= DA-CB
    FUNC3(b3,b1); // X5==T1= T0^2
    FUNC3(b1,b4); // T3= t2^2
    FUNC2(b4,b1,&pState->x0); // Z5=X1*t3
    FUNC3(b1,b5); // AA=A^2
    FUNC3(b5,b6); // BB=B^2
    FUNC4(b2,b1,b5); // E=AA-BB
    FUNC2(b1,b5,b1); // X4= AA*BB
    FUNC1 (b6,b2); // T4 = a24*E
    FUNC0(b6,b6,b5); // T5 = BB + t4
    FUNC2(b2,b6,b2); // Z4 = E*t5
}