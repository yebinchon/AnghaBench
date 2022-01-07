
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mm_struct {int mmap_sem; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;


 unsigned long EINVAL ;
 int MAP_ANONYMOUS ;
 int MAP_PRIVATE ;
 int PROT_READ ;
 int PROT_WRITE ;
 int VM_MPX ;
 TYPE_1__* current ;
 unsigned long do_mmap (int *,int ,unsigned long,int,int,int ,int ,unsigned long*,int *) ;
 int down_write (int *) ;
 int mm_populate (unsigned long,unsigned long) ;
 unsigned long mpx_bt_size_bytes (struct mm_struct*) ;
 int up_write (int *) ;

__attribute__((used)) static unsigned long mpx_mmap(unsigned long len)
{
 struct mm_struct *mm = current->mm;
 unsigned long addr, populate;


 if (len != mpx_bt_size_bytes(mm))
  return -EINVAL;

 down_write(&mm->mmap_sem);
 addr = do_mmap(((void*)0), 0, len, PROT_READ | PROT_WRITE,
         MAP_ANONYMOUS | MAP_PRIVATE, VM_MPX, 0, &populate, ((void*)0));
 up_write(&mm->mmap_sem);
 if (populate)
  mm_populate(addr, populate);

 return addr;
}
