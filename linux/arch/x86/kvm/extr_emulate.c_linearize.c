
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
struct x86_emulate_ctxt {int mode; } ;
struct segmented_address {int dummy; } ;


 int __linearize (struct x86_emulate_ctxt*,struct segmented_address,unsigned int*,unsigned int,int,int,int ,int *) ;

__attribute__((used)) static int linearize(struct x86_emulate_ctxt *ctxt,
       struct segmented_address addr,
       unsigned size, bool write,
       ulong *linear)
{
 unsigned max_size;
 return __linearize(ctxt, addr, &max_size, size, write, 0,
      ctxt->mode, linear);
}
