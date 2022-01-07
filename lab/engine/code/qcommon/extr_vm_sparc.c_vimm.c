
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Com_Printf (char*,unsigned int,int) ;
 int DIE (char*) ;

__attribute__((used)) static void vimm(unsigned int val, int bits, int shift, int sgned, int arg_index)
{
 unsigned int orig_val = val;
 int orig_bits = bits;

 if (sgned) {
  int x = (int) val;
  if (x < 0)
   x = -x;
  val = (unsigned int) x;
  bits--;
 }
 if (val & ~((1U << bits) - 1U)) {
  Com_Printf("VM ERROR: immediate value 0x%08x out of %d bit range\n",
      orig_val, orig_bits);
  DIE("sparc VM bug");
 }
}
