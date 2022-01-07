
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned long jump_to; long bo; long bi; unsigned long ext; struct TYPE_5__* nextJump; TYPE_2__* parent; } ;
typedef TYPE_1__ symbolic_jump_t ;
struct TYPE_6__ {int length; TYPE_1__* jump; } ;
typedef TYPE_2__ dest_instruction_t ;


 int PPC_Append (TYPE_2__*,unsigned long) ;
 void* PPC_Malloc (int) ;
 long branchAlways ;
 TYPE_1__* sj_last ;

__attribute__((used)) static void
PPC_PrepareJump(
  unsigned long int i_count,
  unsigned long int dest,
  long int bo,
  long int bi,
  unsigned long int ext
 )
{
 dest_instruction_t *di_now = PPC_Malloc( sizeof( dest_instruction_t ) );
 symbolic_jump_t *sj = PPC_Malloc( sizeof( symbolic_jump_t ) );

 sj->jump_to = dest;
 sj->bo = bo;
 sj->bi = bi;
 sj->ext = ext;
 sj->parent = di_now;
 sj->nextJump = ((void*)0);

 sj_last->nextJump = sj;
 sj_last = sj;

 di_now->length = (bo == branchAlways ? 1 : 2);
 di_now->jump = sj;

 PPC_Append( di_now, i_count );
}
