
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ppc_instruction_t ;
struct TYPE_4__ {size_t length; int * code; int * jump; } ;
typedef TYPE_1__ dest_instruction_t ;


 int PPC_Append (TYPE_1__*,unsigned long) ;
 TYPE_1__* PPC_Malloc (int) ;
 int memcpy (int *,int const*,size_t) ;

__attribute__((used)) static void
PPC_AppendInstructions(
  unsigned long int i_count,
  size_t num_instructions,
  const ppc_instruction_t *is
 )
{
 if ( num_instructions < 0 )
  num_instructions = 0;
 size_t iBytes = sizeof( ppc_instruction_t ) * num_instructions;
 dest_instruction_t *di_now = PPC_Malloc( sizeof( dest_instruction_t ) + iBytes );

 di_now->length = num_instructions;
 di_now->jump = ((void*)0);

 if ( iBytes > 0 )
  memcpy( &(di_now->code[0]), is, iBytes );

 PPC_Append( di_now, i_count );
}
