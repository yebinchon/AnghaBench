
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_area_struct {unsigned long vm_start; int vm_flags; unsigned long vm_end; TYPE_2__* vm_file; } ;
struct spu_context {TYPE_1__* ops; } ;
struct TYPE_4__ {struct spu_context* private_data; } ;
struct TYPE_3__ {char* (* get_ls ) (struct spu_context*) ;} ;


 int EACCES ;
 int EINTR ;
 int VM_WRITE ;
 int memcpy_fromio (void*,char*,int) ;
 int memcpy_toio (char*,void*,int) ;
 scalar_t__ spu_acquire (struct spu_context*) ;
 int spu_release (struct spu_context*) ;
 char* stub1 (struct spu_context*) ;

__attribute__((used)) static int spufs_mem_mmap_access(struct vm_area_struct *vma,
    unsigned long address,
    void *buf, int len, int write)
{
 struct spu_context *ctx = vma->vm_file->private_data;
 unsigned long offset = address - vma->vm_start;
 char *local_store;

 if (write && !(vma->vm_flags & VM_WRITE))
  return -EACCES;
 if (spu_acquire(ctx))
  return -EINTR;
 if ((offset + len) > vma->vm_end)
  len = vma->vm_end - offset;
 local_store = ctx->ops->get_ls(ctx);
 if (write)
  memcpy_toio(local_store + offset, buf, len);
 else
  memcpy_fromio(buf, local_store + offset, len);
 spu_release(ctx);
 return len;
}
