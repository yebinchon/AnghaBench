
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int MPIC_MSGR_REGISTERS_PER_BLOCK ;
 unsigned int mpic_msgr_number_of_blocks () ;

__attribute__((used)) static unsigned int mpic_msgr_number_of_registers(void)
{
 return mpic_msgr_number_of_blocks() * MPIC_MSGR_REGISTERS_PER_BLOCK;
}
