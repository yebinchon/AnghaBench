
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvm {int slots_lock; } ;
typedef int gpa_t ;


 int __x86_set_memory_region (struct kvm*,int,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int x86_set_memory_region(struct kvm *kvm, int id, gpa_t gpa, u32 size)
{
 int r;

 mutex_lock(&kvm->slots_lock);
 r = __x86_set_memory_region(kvm, id, gpa, size);
 mutex_unlock(&kvm->slots_lock);

 return r;
}
