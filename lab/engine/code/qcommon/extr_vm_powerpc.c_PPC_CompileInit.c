
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int symbolic_jump_t ;
typedef int local_data_t ;
typedef int dest_instruction_t ;
struct TYPE_8__ {int * next; scalar_t__ count; } ;
struct TYPE_7__ {int * jump; int * next; scalar_t__ count; } ;
struct TYPE_6__ {int * nextJump; } ;


 int FALSE_ICOUNT ;
 int GPRLEN ;
 void* PPC_Malloc (int) ;
 long STACK_LR ;
 int STACK_SAVE ;
 TYPE_5__* data_first ;
 TYPE_3__* di_first ;
 TYPE_3__* di_last ;
 int emitEnd () ;
 int emitStart (int ) ;
 int iADDI ;
 int iBL ;
 int iBLR ;
 int iLL ;
 int iMFLR ;
 int iMR ;
 int iMTLR ;
 int iSTL ;
 int iSTLU ;
 int in (int ,...) ;
 int r0 ;
 int r1 ;
 int r3 ;
 int r4 ;
 int r5 ;
 int rDATABASE ;
 int rPSTACK ;
 int rVMDATA ;
 TYPE_1__* sj_first ;
 TYPE_1__* sj_last ;

__attribute__((used)) static void
PPC_CompileInit( void )
{
 di_first = di_last = PPC_Malloc( sizeof( dest_instruction_t ) );
 di_first->count = 0;
 di_first->next = ((void*)0);
 di_first->jump = ((void*)0);

 sj_first = sj_last = PPC_Malloc( sizeof( symbolic_jump_t ) );
 sj_first->nextJump = ((void*)0);

 data_first = PPC_Malloc( sizeof( local_data_t ) );
 data_first->count = 0;
 data_first->next = ((void*)0);
 emitStart( FALSE_ICOUNT );

 long int stack = STACK_SAVE + 4 * GPRLEN;

 in( iMFLR, r0 );
 in( iSTLU, r1, -stack, r1 );
 in( iSTL, rVMDATA, STACK_SAVE + 0 * GPRLEN, r1 );
 in( iSTL, rPSTACK, STACK_SAVE + 1 * GPRLEN, r1 );
 in( iSTL, rDATABASE, STACK_SAVE + 2 * GPRLEN, r1 );
 in( iSTL, r0, stack + STACK_LR, r1 );
 in( iMR, rVMDATA, r3 );
 in( iMR, rPSTACK, r4 );
 in( iMR, rDATABASE, r5 );
 in( iBL, +4*8 );
 in( iLL, rVMDATA, STACK_SAVE + 0 * GPRLEN, r1 );
 in( iLL, rPSTACK, STACK_SAVE + 1 * GPRLEN, r1 );
 in( iLL, rDATABASE, STACK_SAVE + 2 * GPRLEN, r1 );
 in( iLL, r0, stack + STACK_LR, r1 );
 in( iMTLR, r0 );
 in( iADDI, r1, r1, stack );
 in( iBLR );

 emitEnd();
}
