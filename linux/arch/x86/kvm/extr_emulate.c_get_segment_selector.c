
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct x86_emulate_ctxt {TYPE_1__* ops; } ;
struct desc_struct {int dummy; } ;
struct TYPE_2__ {int (* get_segment ) (struct x86_emulate_ctxt*,int *,struct desc_struct*,int *,unsigned int) ;} ;


 int stub1 (struct x86_emulate_ctxt*,int *,struct desc_struct*,int *,unsigned int) ;

__attribute__((used)) static u16 get_segment_selector(struct x86_emulate_ctxt *ctxt, unsigned seg)
{
 u16 selector;
 struct desc_struct desc;

 ctxt->ops->get_segment(ctxt, &selector, &desc, ((void*)0), seg);
 return selector;
}
