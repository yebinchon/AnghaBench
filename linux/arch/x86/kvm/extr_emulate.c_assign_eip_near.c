
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
struct x86_emulate_ctxt {int mode; } ;


 int assign_eip (struct x86_emulate_ctxt*,int ,int ) ;

__attribute__((used)) static inline int assign_eip_near(struct x86_emulate_ctxt *ctxt, ulong dst)
{
 return assign_eip(ctxt, dst, ctxt->mode);
}
