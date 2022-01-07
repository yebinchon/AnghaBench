
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;


 int __sev_issue_dbg_cmd (struct kvm*,unsigned long,unsigned long,int,int*,int) ;
 unsigned long round_down (unsigned long,int) ;
 int round_up (int,int) ;

__attribute__((used)) static int __sev_dbg_decrypt(struct kvm *kvm, unsigned long src_paddr,
        unsigned long dst_paddr, int sz, int *err)
{
 int offset;





 src_paddr = round_down(src_paddr, 16);
 offset = src_paddr & 15;
 sz = round_up(sz + offset, 16);

 return __sev_issue_dbg_cmd(kvm, src_paddr, dst_paddr, sz, err, 0);
}
