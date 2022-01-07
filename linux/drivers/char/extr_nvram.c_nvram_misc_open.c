
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int f_flags; int f_mode; } ;
struct TYPE_2__ {int * set_checksum; } ;


 int EBUSY ;
 int FMODE_WRITE ;
 int NVRAM_EXCL ;
 int NVRAM_WRITE ;
 int O_EXCL ;
 TYPE_1__ arch_nvram_ops ;
 scalar_t__ nvram_open_cnt ;
 int nvram_open_mode ;
 int nvram_state_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int nvram_misc_open(struct inode *inode, struct file *file)
{
 spin_lock(&nvram_state_lock);


 if ((nvram_open_cnt && (file->f_flags & O_EXCL)) ||
     (nvram_open_mode & NVRAM_EXCL)) {
  spin_unlock(&nvram_state_lock);
  return -EBUSY;
 }
 if (file->f_flags & O_EXCL)
  nvram_open_mode |= NVRAM_EXCL;
 if (file->f_mode & FMODE_WRITE)
  nvram_open_mode |= NVRAM_WRITE;
 nvram_open_cnt++;

 spin_unlock(&nvram_state_lock);

 return 0;
}
