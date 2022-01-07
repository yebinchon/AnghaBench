
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct x86_emulate_ctxt {int dummy; } ;
struct kvm_segment {int limit; int base; scalar_t__ g; int db; int l; int avl; int present; int dpl; int s; int type; scalar_t__ unusable; int selector; } ;
struct desc_struct {scalar_t__ g; int d; int l; int avl; int p; int dpl; int s; int type; } ;


 int emul_to_vcpu (struct x86_emulate_ctxt*) ;
 int kvm_get_segment (int ,struct kvm_segment*,int) ;
 int memset (struct desc_struct*,int ,int) ;
 int set_desc_base (struct desc_struct*,unsigned long) ;
 int set_desc_limit (struct desc_struct*,int) ;

__attribute__((used)) static bool emulator_get_segment(struct x86_emulate_ctxt *ctxt, u16 *selector,
     struct desc_struct *desc, u32 *base3,
     int seg)
{
 struct kvm_segment var;

 kvm_get_segment(emul_to_vcpu(ctxt), &var, seg);
 *selector = var.selector;

 if (var.unusable) {
  memset(desc, 0, sizeof(*desc));
  if (base3)
   *base3 = 0;
  return 0;
 }

 if (var.g)
  var.limit >>= 12;
 set_desc_limit(desc, var.limit);
 set_desc_base(desc, (unsigned long)var.base);




 desc->type = var.type;
 desc->s = var.s;
 desc->dpl = var.dpl;
 desc->p = var.present;
 desc->avl = var.avl;
 desc->l = var.l;
 desc->d = var.db;
 desc->g = var.g;

 return 1;
}
