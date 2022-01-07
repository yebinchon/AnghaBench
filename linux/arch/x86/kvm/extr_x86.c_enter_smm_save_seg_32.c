
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm_segment {int limit; int base; int selector; } ;


 int enter_smm_get_segment_flags (struct kvm_segment*) ;
 int kvm_get_segment (struct kvm_vcpu*,struct kvm_segment*,int) ;
 int put_smstate (int ,char*,int,int ) ;
 int u32 ;

__attribute__((used)) static void enter_smm_save_seg_32(struct kvm_vcpu *vcpu, char *buf, int n)
{
 struct kvm_segment seg;
 int offset;

 kvm_get_segment(vcpu, &seg, n);
 put_smstate(u32, buf, 0x7fa8 + n * 4, seg.selector);

 if (n < 3)
  offset = 0x7f84 + n * 12;
 else
  offset = 0x7f2c + (n - 3) * 12;

 put_smstate(u32, buf, offset + 8, seg.base);
 put_smstate(u32, buf, offset + 4, seg.limit);
 put_smstate(u32, buf, offset, enter_smm_get_segment_flags(&seg));
}
