
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int fe25519 ;
struct TYPE_3__ {int x0; int zq; int xq; int zp; int xp; int * pZq; int * pXq; int * pZp; int * pXp; } ;
typedef TYPE_1__ ST_curve25519ladderstepWorkingState ;


 int fe25519_add (int *,int *,int *) ;
 int fe25519_mpyWith121666 (int *,int *) ;
 int fe25519_mul (int *,int *,int *) ;
 int fe25519_square (int *,int *) ;
 int fe25519_sub (int *,int *,int *) ;

__attribute__((used)) static void
curve25519_ladderstep(
    ST_curve25519ladderstepWorkingState* pState
)
{
    fe25519 t1, t2;





    fe25519 *b1=&pState->xp; fe25519 *b2=&pState->zp;
    fe25519 *b3=&pState->xq; fe25519 *b4=&pState->zq;


    fe25519 *b5= &t1; fe25519 *b6=&t2;

    fe25519_add(b5,b1,b2);
    fe25519_sub(b6,b1,b2);
    fe25519_add(b1,b3,b4);
    fe25519_sub(b2,b3,b4);
    fe25519_mul(b3,b2,b5);
    fe25519_mul(b2,b1,b6);
    fe25519_add(b1,b2,b3);
    fe25519_sub(b4,b3,b2);
    fe25519_square(b3,b1);
    fe25519_square(b1,b4);
    fe25519_mul(b4,b1,&pState->x0);
    fe25519_square(b1,b5);
    fe25519_square(b5,b6);
    fe25519_sub(b2,b1,b5);
    fe25519_mul(b1,b5,b1);
    fe25519_mpyWith121666 (b6,b2);
    fe25519_add(b6,b6,b5);
    fe25519_mul(b2,b6,b2);
}
