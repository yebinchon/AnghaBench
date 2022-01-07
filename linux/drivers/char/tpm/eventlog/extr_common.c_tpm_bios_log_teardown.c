
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_chip {scalar_t__* bios_dir; } ;
struct inode {int * i_private; } ;


 int TPM_NUM_EVENT_LOG_FILES ;
 struct inode* d_inode (scalar_t__) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 int securityfs_remove (scalar_t__) ;

void tpm_bios_log_teardown(struct tpm_chip *chip)
{
 int i;
 struct inode *inode;







 for (i = (TPM_NUM_EVENT_LOG_FILES - 1); i >= 0; i--) {
  if (chip->bios_dir[i]) {
   inode = d_inode(chip->bios_dir[i]);
   inode_lock(inode);
   inode->i_private = ((void*)0);
   inode_unlock(inode);
   securityfs_remove(chip->bios_dir[i]);
  }
 }
}
