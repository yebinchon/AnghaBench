
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x86_emulate_ctxt {int dummy; } ;


 int GP_VECTOR ;
 int emulate_exception (struct x86_emulate_ctxt*,int ,int,int) ;

__attribute__((used)) static int emulate_gp(struct x86_emulate_ctxt *ctxt, int err)
{
 return emulate_exception(ctxt, GP_VECTOR, err, 1);
}
