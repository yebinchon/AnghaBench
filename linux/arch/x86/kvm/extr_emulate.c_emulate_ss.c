
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x86_emulate_ctxt {int dummy; } ;


 int SS_VECTOR ;
 int emulate_exception (struct x86_emulate_ctxt*,int ,int,int) ;

__attribute__((used)) static int emulate_ss(struct x86_emulate_ctxt *ctxt, int err)
{
 return emulate_exception(ctxt, SS_VECTOR, err, 1);
}
