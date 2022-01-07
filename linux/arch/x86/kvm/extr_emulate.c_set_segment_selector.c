
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct x86_emulate_ctxt {TYPE_1__* ops; } ;
struct desc_struct {int dummy; } ;
struct TYPE_2__ {int (* set_segment ) (struct x86_emulate_ctxt*,int ,struct desc_struct*,int ,unsigned int) ;int (* get_segment ) (struct x86_emulate_ctxt*,int *,struct desc_struct*,int *,unsigned int) ;} ;


 int stub1 (struct x86_emulate_ctxt*,int *,struct desc_struct*,int *,unsigned int) ;
 int stub2 (struct x86_emulate_ctxt*,int ,struct desc_struct*,int ,unsigned int) ;

__attribute__((used)) static void set_segment_selector(struct x86_emulate_ctxt *ctxt, u16 selector,
     unsigned seg)
{
 u16 dummy;
 u32 base3;
 struct desc_struct desc;

 ctxt->ops->get_segment(ctxt, &dummy, &desc, &base3, seg);
 ctxt->ops->set_segment(ctxt, selector, &desc, base3, seg);
}
