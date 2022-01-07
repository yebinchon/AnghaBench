
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u8 ;
struct kvm_s390_cmma_log {unsigned long start_gfn; unsigned long count; } ;
struct kvm {int mm; } ;


 int EFAULT ;
 scalar_t__ get_pgste (int ,unsigned long,unsigned long*) ;
 unsigned long gfn_to_hva (struct kvm*,unsigned long) ;
 scalar_t__ kvm_is_error_hva (unsigned long) ;

__attribute__((used)) static int kvm_s390_peek_cmma(struct kvm *kvm, struct kvm_s390_cmma_log *args,
         u8 *res, unsigned long bufsize)
{
 unsigned long pgstev, hva, cur_gfn = args->start_gfn;

 args->count = 0;
 while (args->count < bufsize) {
  hva = gfn_to_hva(kvm, cur_gfn);




  if (kvm_is_error_hva(hva))
   return args->count ? 0 : -EFAULT;
  if (get_pgste(kvm->mm, hva, &pgstev) < 0)
   pgstev = 0;
  res[args->count++] = (pgstev >> 24) & 0x43;
  cur_gfn++;
 }

 return 0;
}
