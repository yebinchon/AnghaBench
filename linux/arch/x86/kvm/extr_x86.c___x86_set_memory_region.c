
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct kvm_userspace_memory_region {int slot; unsigned long userspace_addr; scalar_t__ memory_size; int guest_phys_addr; scalar_t__ flags; } ;
struct kvm_memslots {int dummy; } ;
struct kvm_memory_slot {int npages; int userspace_addr; } ;
struct kvm {int dummy; } ;
typedef int gpa_t ;


 int EEXIST ;
 int EINVAL ;
 scalar_t__ IS_ERR (void*) ;
 int KVM_ADDRESS_SPACE_NUM ;
 int KVM_MEM_SLOTS_NUM ;
 int MAP_ANONYMOUS ;
 int MAP_SHARED ;
 int PAGE_SIZE ;
 int PROT_READ ;
 int PROT_WRITE ;
 int PTR_ERR (void*) ;
 scalar_t__ WARN_ON (int) ;
 int __kvm_set_memory_region (struct kvm*,struct kvm_userspace_memory_region*) ;
 struct kvm_memory_slot* id_to_memslot (struct kvm_memslots*,int) ;
 struct kvm_memslots* kvm_memslots (struct kvm*) ;
 unsigned long vm_mmap (int *,int ,scalar_t__,int,int,int ) ;
 int vm_munmap (int ,int) ;

int __x86_set_memory_region(struct kvm *kvm, int id, gpa_t gpa, u32 size)
{
 int i, r;
 unsigned long hva;
 struct kvm_memslots *slots = kvm_memslots(kvm);
 struct kvm_memory_slot *slot, old;


 if (WARN_ON(id >= KVM_MEM_SLOTS_NUM))
  return -EINVAL;

 slot = id_to_memslot(slots, id);
 if (size) {
  if (slot->npages)
   return -EEXIST;





  hva = vm_mmap(((void*)0), 0, size, PROT_READ | PROT_WRITE,
         MAP_SHARED | MAP_ANONYMOUS, 0);
  if (IS_ERR((void *)hva))
   return PTR_ERR((void *)hva);
 } else {
  if (!slot->npages)
   return 0;

  hva = 0;
 }

 old = *slot;
 for (i = 0; i < KVM_ADDRESS_SPACE_NUM; i++) {
  struct kvm_userspace_memory_region m;

  m.slot = id | (i << 16);
  m.flags = 0;
  m.guest_phys_addr = gpa;
  m.userspace_addr = hva;
  m.memory_size = size;
  r = __kvm_set_memory_region(kvm, &m);
  if (r < 0)
   return r;
 }

 if (!size)
  vm_munmap(old.userspace_addr, old.npages * PAGE_SIZE);

 return 0;
}
