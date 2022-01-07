
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcpy (char*,char*) ;

__attribute__((used)) static void adjust_instruction_counter_name(char *out_name, char *in_name)
{
 int i = 0;

 strcpy(out_name, in_name);
 while (in_name[i] != '\0') {
  if (out_name[i] == '_')
   out_name[i] = '.';
  i++;
 }
}
