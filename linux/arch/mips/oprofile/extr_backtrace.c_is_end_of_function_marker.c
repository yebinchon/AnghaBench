
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ opcode; int rt; } ;
struct TYPE_3__ {scalar_t__ func; int rs; } ;
union mips_instruction {TYPE_2__ i_format; TYPE_1__ r_format; } ;


 scalar_t__ jr_op ;
 scalar_t__ lui_op ;

__attribute__((used)) static inline int is_end_of_function_marker(union mips_instruction *ip)
{

 if (ip->r_format.func == jr_op && ip->r_format.rs == 31)
  return 1;

 if (ip->i_format.opcode == lui_op && ip->i_format.rt == 28)
  return 1;
 return 0;
}
