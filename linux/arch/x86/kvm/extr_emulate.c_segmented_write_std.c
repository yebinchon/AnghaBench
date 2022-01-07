
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ulong ;
struct x86_emulate_ctxt {int exception; TYPE_1__* ops; } ;
struct segmented_address {int dummy; } ;
struct TYPE_2__ {int (* write_std ) (struct x86_emulate_ctxt*,int ,void*,unsigned int,int *,int) ;} ;


 int X86EMUL_CONTINUE ;
 int linearize (struct x86_emulate_ctxt*,struct segmented_address,unsigned int,int,int *) ;
 int stub1 (struct x86_emulate_ctxt*,int ,void*,unsigned int,int *,int) ;

__attribute__((used)) static int segmented_write_std(struct x86_emulate_ctxt *ctxt,
          struct segmented_address addr,
          void *data,
          unsigned int size)
{
 int rc;
 ulong linear;

 rc = linearize(ctxt, addr, size, 1, &linear);
 if (rc != X86EMUL_CONTINUE)
  return rc;
 return ctxt->ops->write_std(ctxt, linear, data, size, &ctxt->exception, 0);
}
