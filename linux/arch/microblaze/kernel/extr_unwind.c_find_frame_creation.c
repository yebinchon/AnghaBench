
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s16 ;


 int get_frame_size (unsigned long) ;
 int kernel_text_address (unsigned long) ;
 int pr_debug (char*,...) ;

__attribute__((used)) static unsigned long *find_frame_creation(unsigned long *pc)
{
 int i;






 for (i = 0; i < 1000; i++, pc--) {
  unsigned long instr;
  s16 frame_size;

  if (!kernel_text_address((unsigned long) pc))
   return ((void*)0);

  instr = *pc;


  if ((instr & 0xFFFF0000) != 0x30210000)
   continue;

  frame_size = get_frame_size(instr);
  if ((frame_size < 8) || (frame_size & 3)) {
   pr_debug("    Invalid frame size %d at 0x%p\n",
     frame_size, pc);
   return ((void*)0);
  }

  pr_debug("    Found frame creation at 0x%p, size %d\n", pc,
    frame_size);
  return pc;
 }

 return ((void*)0);
}
