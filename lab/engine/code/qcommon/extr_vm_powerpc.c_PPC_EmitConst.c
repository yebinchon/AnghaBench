
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int si; int i; int* us; int * ss; } ;
struct TYPE_5__ {int regR; long regPos; TYPE_1__ arg; int i_count; } ;
typedef TYPE_2__ source_instruction_t ;


 int PPC_PushData (int) ;
 int emitEnd () ;
 int emitStart (int ) ;
 int fFIRST ;
 int iLFS ;
 int iLI ;
 int iLIS ;
 int iORI ;
 int in (int ,int ,int,...) ;
 int rFIRST ;
 int rTYPE_FLOAT ;
 int rVMDATA ;

__attribute__((used)) static void
PPC_EmitConst( source_instruction_t * const i_const )
{
 emitStart( i_const->i_count );

 if ( !(i_const->regR & rTYPE_FLOAT) ) {

  long int gpr_pos = i_const->regPos;

  if ( i_const->arg.si >= -0x8000 && i_const->arg.si < 0x8000 ) {
   in( iLI, rFIRST, i_const->arg.si );
  } else if ( i_const->arg.i < 0x10000 ) {
   in( iLI, rFIRST, 0 );
   in( iORI, rFIRST, rFIRST, i_const->arg.i );
  } else {
   in( iLIS, rFIRST, i_const->arg.ss[ 0 ] );
   if ( i_const->arg.us[ 1 ] != 0 )
    in( iORI, rFIRST, rFIRST, i_const->arg.us[ 1 ] );
  }

 } else {

  long int fpr_pos = i_const->regPos;



  in( iLFS, fFIRST, PPC_PushData( i_const->arg.i ), rVMDATA );
 }

 emitEnd();
}
