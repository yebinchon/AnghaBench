
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct file {int dummy; } ;


 int ENOSYS ;

__attribute__((used)) static int hpet_mmap(struct file *file, struct vm_area_struct *vma)
{
 return -ENOSYS;
}
