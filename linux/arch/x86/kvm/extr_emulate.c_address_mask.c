
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x86_emulate_ctxt {int ad_bytes; } ;


 unsigned long ad_mask (struct x86_emulate_ctxt*) ;

__attribute__((used)) static inline unsigned long
address_mask(struct x86_emulate_ctxt *ctxt, unsigned long reg)
{
 if (ctxt->ad_bytes == sizeof(unsigned long))
  return reg;
 else
  return reg & ad_mask(ctxt);
}
