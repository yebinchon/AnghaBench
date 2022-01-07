
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtas_update_flash_t {scalar_t__ status; int * flist; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;


 scalar_t__ FLASH_AUTH ;
 scalar_t__ FLASH_IMG_READY ;
 scalar_t__ flash_list_valid (int *) ;
 int free_flash_list (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int * rtas_firmware_flash_list ;
 struct rtas_update_flash_t rtas_update_flash_data ;
 int rtas_update_flash_mutex ;

__attribute__((used)) static int rtas_flash_release(struct inode *inode, struct file *file)
{
 struct rtas_update_flash_t *const uf = &rtas_update_flash_data;

 mutex_lock(&rtas_update_flash_mutex);

 if (uf->flist) {


  if (rtas_firmware_flash_list) {
   free_flash_list(rtas_firmware_flash_list);
   rtas_firmware_flash_list = ((void*)0);
  }

  if (uf->status != FLASH_AUTH)
   uf->status = flash_list_valid(uf->flist);

  if (uf->status == FLASH_IMG_READY)
   rtas_firmware_flash_list = uf->flist;
  else
   free_flash_list(uf->flist);

  uf->flist = ((void*)0);
 }

 mutex_unlock(&rtas_update_flash_mutex);
 return 0;
}
