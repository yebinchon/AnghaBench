
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int insn_length (unsigned char) ;
 int print_insn (char*,unsigned char*,unsigned long) ;
 int printk (char*,char*) ;
 int sprintf (char*,char*,...) ;

void print_fn_code(unsigned char *code, unsigned long len)
{
 char buffer[64], *ptr;
 int opsize, i;

 while (len) {
  ptr = buffer;
  opsize = insn_length(*code);
  if (opsize > len)
   break;
  ptr += sprintf(ptr, "%p: ", code);
  for (i = 0; i < opsize; i++)
   ptr += sprintf(ptr, "%02x", code[i]);
  *ptr++ = '\t';
  if (i < 4)
   *ptr++ = '\t';
  ptr += print_insn(ptr, code, (unsigned long) code);
  *ptr++ = '\n';
  *ptr++ = 0;
  printk("%s", buffer);
  code += opsize;
  len -= opsize;
 }
}
