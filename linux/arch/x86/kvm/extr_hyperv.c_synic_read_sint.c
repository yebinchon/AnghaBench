
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_vcpu_hv_synic {int * sint; } ;


 int atomic64_read (int *) ;

__attribute__((used)) static inline u64 synic_read_sint(struct kvm_vcpu_hv_synic *synic, int sint)
{
 return atomic64_read(&synic->sint[sint]);
}
