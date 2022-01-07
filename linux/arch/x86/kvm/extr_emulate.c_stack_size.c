
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x86_emulate_ctxt {int dummy; } ;


 int __fls (int ) ;
 int stack_mask (struct x86_emulate_ctxt*) ;

__attribute__((used)) static int stack_size(struct x86_emulate_ctxt *ctxt)
{
 return (__fls(stack_mask(ctxt)) + 1) >> 3;
}
