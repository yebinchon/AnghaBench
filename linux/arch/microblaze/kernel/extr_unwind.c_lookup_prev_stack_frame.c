
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int _switch_to ;
 unsigned long* find_frame_creation (unsigned long*) ;
 long get_frame_size (unsigned long) ;

__attribute__((used)) static int lookup_prev_stack_frame(unsigned long fp, unsigned long pc,
       unsigned long leaf_return,
       unsigned long *pprev_fp,
       unsigned long *pprev_pc)
{
 unsigned long *prologue = ((void*)0);


 if (pc != (unsigned long) &_switch_to)
  prologue = find_frame_creation((unsigned long *)pc);

 if (prologue) {
  long frame_size = get_frame_size(*prologue);

  *pprev_fp = fp + frame_size;
  *pprev_pc = *(unsigned long *)fp;
 } else {
  if (!leaf_return)
   return -EINVAL;
  *pprev_pc = leaf_return;
  *pprev_fp = fp;
 }




 return (!*pprev_pc || (*pprev_pc & 3)) ? -EINVAL : 0;
}
