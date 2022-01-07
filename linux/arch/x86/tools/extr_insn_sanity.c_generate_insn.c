
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_INSN_SIZE ;
 scalar_t__ input_file ;
 int random () ;
 int read_next_insn (unsigned char*) ;

__attribute__((used)) static int generate_insn(unsigned char *insn_buff)
{
 int i;

 if (input_file)
  return read_next_insn(insn_buff);


 for (i = 0; i < MAX_INSN_SIZE - 1; i += 2)
  *(unsigned short *)(&insn_buff[i]) = random() & 0xffff;

 while (i < MAX_INSN_SIZE)
  insn_buff[i++] = random() & 0xff;

 return i;
}
