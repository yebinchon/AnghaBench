
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct insn {int opcode; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int cmpopcode(const void *a, const void *b)
{
 return strcmp(((struct insn *)a)->opcode, ((struct insn *)b)->opcode);
}
