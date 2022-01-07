
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int i_count; } ;
typedef TYPE_1__ source_instruction_t ;


 int PPC_AppendInstructions (int ,int ,int *) ;

__attribute__((used)) static inline void
PPC_EmitNull( source_instruction_t * const i_null )
{
 PPC_AppendInstructions( i_null->i_count, 0, ((void*)0) );
}
