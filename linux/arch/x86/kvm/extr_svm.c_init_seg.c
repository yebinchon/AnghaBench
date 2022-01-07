
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmcb_seg {int attrib; int limit; scalar_t__ base; scalar_t__ selector; } ;


 int SVM_SELECTOR_P_MASK ;
 int SVM_SELECTOR_S_MASK ;
 int SVM_SELECTOR_WRITE_MASK ;

__attribute__((used)) static void init_seg(struct vmcb_seg *seg)
{
 seg->selector = 0;
 seg->attrib = SVM_SELECTOR_P_MASK | SVM_SELECTOR_S_MASK |
        SVM_SELECTOR_WRITE_MASK;
 seg->limit = 0xffff;
 seg->base = 0;
}
