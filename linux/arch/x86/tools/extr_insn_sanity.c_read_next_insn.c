
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (char*) ;
 int MAX_INSN_SIZE ;
 scalar_t__ feof (int ) ;
 char* fgets (char*,int ,int ) ;
 int input_file ;
 scalar_t__ strtoul (char*,char**,int) ;

__attribute__((used)) static int read_next_insn(unsigned char *insn_buff)
{
 char buf[256] = "", *tmp;
 int i;

 tmp = fgets(buf, ARRAY_SIZE(buf), input_file);
 if (tmp == ((void*)0) || feof(input_file))
  return 0;

 for (i = 0; i < MAX_INSN_SIZE; i++) {
  insn_buff[i] = (unsigned char)strtoul(tmp, &tmp, 16);
  if (*tmp != ' ')
   break;
 }

 return i;
}
