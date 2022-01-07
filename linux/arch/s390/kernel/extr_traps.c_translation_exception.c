
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int panic (char*) ;

void translation_exception(struct pt_regs *regs)
{

 panic("Translation exception");
}
