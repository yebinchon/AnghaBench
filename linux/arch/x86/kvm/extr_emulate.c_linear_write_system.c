
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ulong ;
struct x86_emulate_ctxt {int exception; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* write_std ) (struct x86_emulate_ctxt*,int ,void*,unsigned int,int *,int) ;} ;


 int stub1 (struct x86_emulate_ctxt*,int ,void*,unsigned int,int *,int) ;

__attribute__((used)) static int linear_write_system(struct x86_emulate_ctxt *ctxt,
          ulong linear, void *data,
          unsigned int size)
{
 return ctxt->ops->write_std(ctxt, linear, data, size, &ctxt->exception, 1);
}
