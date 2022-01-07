
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stackframe {int pc; } ;


 int oprofile_add_trace (int ) ;

__attribute__((used)) static int report_trace(struct stackframe *frame, void *d)
{
 unsigned int *depth = d;

 if (*depth) {
  oprofile_add_trace(frame->pc);
  (*depth)--;
 }

 return *depth == 0;
}
