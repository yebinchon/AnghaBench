
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vma_data {int vm_end; int vm_start; unsigned long* maddr; int refcnt; } ;
struct vm_area_struct {struct vma_data* vm_private_data; } ;


 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int kvfree (struct vma_data*) ;
 int memset (char*,int ,int ) ;
 int refcount_dec_and_test (int *) ;
 int uncached_free_page (unsigned long,int) ;

__attribute__((used)) static void
mspec_close(struct vm_area_struct *vma)
{
 struct vma_data *vdata;
 int index, last_index;
 unsigned long my_page;

 vdata = vma->vm_private_data;

 if (!refcount_dec_and_test(&vdata->refcnt))
  return;

 last_index = (vdata->vm_end - vdata->vm_start) >> PAGE_SHIFT;
 for (index = 0; index < last_index; index++) {
  if (vdata->maddr[index] == 0)
   continue;




  my_page = vdata->maddr[index];
  vdata->maddr[index] = 0;
  memset((char *)my_page, 0, PAGE_SIZE);
  uncached_free_page(my_page, 1);
 }

 kvfree(vdata);
}
