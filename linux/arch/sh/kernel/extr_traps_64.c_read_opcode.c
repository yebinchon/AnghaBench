
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int reg_size_t ;
typedef int insn_size_t ;


 int EFAULT ;
 int __get_user (int ,int *) ;
 int access_ok (unsigned long,int) ;

__attribute__((used)) static int read_opcode(reg_size_t pc, insn_size_t *result_opcode, int from_user_mode)
{
 int get_user_error;
 unsigned long aligned_pc;
 insn_size_t opcode;

 if ((pc & 3) == 1) {

  aligned_pc = pc & ~3;
  if (from_user_mode) {
   if (!access_ok(aligned_pc, sizeof(insn_size_t))) {
    get_user_error = -EFAULT;
   } else {
    get_user_error = __get_user(opcode, (insn_size_t *)aligned_pc);
    *result_opcode = opcode;
   }
   return get_user_error;
  } else {



   *result_opcode = *(insn_size_t *)aligned_pc;
   return 0;
  }
 } else if ((pc & 1) == 0) {




  return -EFAULT;
 } else {

  return -EFAULT;
 }
}
