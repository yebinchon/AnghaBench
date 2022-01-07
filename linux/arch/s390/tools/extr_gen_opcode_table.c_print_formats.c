
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gen_opcode {int nr; TYPE_1__* insn; } ;
struct TYPE_2__ {char* format; } ;


 int cmpformat ;
 int printf (char*,...) ;
 int qsort (TYPE_1__*,int,int,int ) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static void print_formats(struct gen_opcode *desc)
{
 char *format;
 int i, count;

 qsort(desc->insn, desc->nr, sizeof(*desc->insn), cmpformat);
 format = "";
 count = 0;
 printf("enum {\n");
 for (i = 0; i < desc->nr; i++) {
  if (!strcmp(format, desc->insn[i].format))
   continue;
  count++;
  format = desc->insn[i].format;
  printf("\tINSTR_%s,\n", format);
 }
 printf("}; /* %d */\n\n", count);
}
