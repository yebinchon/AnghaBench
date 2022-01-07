
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x86_emulate_ctxt {int dummy; } ;


 int NM_VECTOR ;
 int emulate_exception (struct x86_emulate_ctxt*,int ,int ,int) ;

__attribute__((used)) static int emulate_nm(struct x86_emulate_ctxt *ctxt)
{
 return emulate_exception(ctxt, NM_VECTOR, 0, 0);
}
