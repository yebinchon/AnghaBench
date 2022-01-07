
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {unsigned long vm_start; int vm_end; scalar_t__ vm_file; } ;
struct mm_struct {int mmap_sem; } ;
struct TYPE_2__ {struct mm_struct* active_mm; } ;


 int ARC_PATH_MAX ;
 scalar_t__ IS_ERR (char*) ;
 unsigned long TASK_UNMAPPED_BASE ;
 TYPE_1__* current ;
 int down_read (int *) ;
 char* file_path (scalar_t__,char*,int) ;
 struct vm_area_struct* find_vma (struct mm_struct*,unsigned long) ;
 int pr_info (char*,...) ;
 int up_read (int *) ;

__attribute__((used)) static void show_faulting_vma(unsigned long address)
{
 struct vm_area_struct *vma;
 struct mm_struct *active_mm = current->active_mm;




 down_read(&active_mm->mmap_sem);
 vma = find_vma(active_mm, address);




 if (vma && (vma->vm_start <= address)) {
  char buf[ARC_PATH_MAX];
  char *nm = "?";

  if (vma->vm_file) {
   nm = file_path(vma->vm_file, buf, ARC_PATH_MAX-1);
   if (IS_ERR(nm))
    nm = "?";
  }
  pr_info("    @off 0x%lx in [%s]\n"
   "    VMA: 0x%08lx to 0x%08lx\n",
   vma->vm_start < TASK_UNMAPPED_BASE ?
    address : address - vma->vm_start,
   nm, vma->vm_start, vma->vm_end);
 } else
  pr_info("    @No matching VMA found\n");

 up_read(&active_mm->mmap_sem);
}
