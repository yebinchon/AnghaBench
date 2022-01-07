
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct optable {unsigned char bitmask; unsigned char bitpattern; size_t length; } ;
struct TYPE_2__ {int size; struct optable* ptr; } ;


 unsigned short* decode (struct task_struct*,struct optable const*,unsigned char*,unsigned short*,unsigned char) ;
 TYPE_1__* optables ;

__attribute__((used)) static unsigned short *nextpc(struct task_struct *child, unsigned short *pc)
{
 const struct optable *op;
 unsigned char *fetch_p;
 int op_len;
 unsigned char inst;

 op = optables[0].ptr;
 op_len = optables[0].size;
 fetch_p = (unsigned char *)pc;
 inst = *fetch_p++;
 do {
  if ((inst & op->bitmask) == op->bitpattern) {
   if (op->length < 0) {
    op = optables[-op->length].ptr;
    op_len = optables[-op->length].size + 1;
    inst = *fetch_p++;
   } else
    return decode(child, op, fetch_p, pc, inst);
  } else
   op++;
 } while (--op_len > 0);
 return ((void*)0);
}
