
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct insn {int dummy; } ;


 int EBUSY ;
 int EINVAL ;
 int RELATIVEJUMP_SIZE ;
 int __copy_instruction (int *,int *,int *,struct insn*) ;
 scalar_t__ alternatives_text_reserved (int *,int *) ;
 int can_boost (struct insn*,int *) ;
 scalar_t__ ftrace_text_reserved (int *,int *) ;
 scalar_t__ jump_label_text_reserved (int *,int *) ;

__attribute__((used)) static int copy_optimized_instructions(u8 *dest, u8 *src, u8 *real)
{
 struct insn insn;
 int len = 0, ret;

 while (len < RELATIVEJUMP_SIZE) {
  ret = __copy_instruction(dest + len, src + len, real + len, &insn);
  if (!ret || !can_boost(&insn, src + len))
   return -EINVAL;
  len += ret;
 }

 if (ftrace_text_reserved(src, src + len - 1) ||
     alternatives_text_reserved(src, src + len - 1) ||
     jump_label_text_reserved(src, src + len - 1))
  return -EBUSY;

 return len;
}
