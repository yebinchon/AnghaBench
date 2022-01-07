
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct x86_emulate_ctxt {int dummy; } ;
struct kvm_vcpu {int dummy; } ;
struct kvm_segment {int base; int limit; int unusable; scalar_t__ padding; int present; int avl; scalar_t__ g; int l; int s; int db; int dpl; int type; int selector; } ;
struct desc_struct {int p; int avl; scalar_t__ g; int l; int s; int d; int dpl; int type; } ;


 struct kvm_vcpu* emul_to_vcpu (struct x86_emulate_ctxt*) ;
 int get_desc_base (struct desc_struct*) ;
 int get_desc_limit (struct desc_struct*) ;
 int kvm_set_segment (struct kvm_vcpu*,struct kvm_segment*,int) ;

__attribute__((used)) static void emulator_set_segment(struct x86_emulate_ctxt *ctxt, u16 selector,
     struct desc_struct *desc, u32 base3,
     int seg)
{
 struct kvm_vcpu *vcpu = emul_to_vcpu(ctxt);
 struct kvm_segment var;

 var.selector = selector;
 var.base = get_desc_base(desc);



 var.limit = get_desc_limit(desc);
 if (desc->g)
  var.limit = (var.limit << 12) | 0xfff;
 var.type = desc->type;
 var.dpl = desc->dpl;
 var.db = desc->d;
 var.s = desc->s;
 var.l = desc->l;
 var.g = desc->g;
 var.avl = desc->avl;
 var.present = desc->p;
 var.unusable = !var.present;
 var.padding = 0;

 kvm_set_segment(vcpu, &var, seg);
 return;
}
