
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EACCES ;
 int MACHINE_IS_VM ;
 int all_guests ;
 int dbfs_file_2fc ;
 scalar_t__ diag2fc (int ,int ,int *) ;
 int guest_query ;
 int hypfs_dbfs_create_file (int *) ;
 int local_guest ;

int hypfs_vm_init(void)
{
 if (!MACHINE_IS_VM)
  return 0;
 if (diag2fc(0, all_guests, ((void*)0)) > 0)
  guest_query = all_guests;
 else if (diag2fc(0, local_guest, ((void*)0)) > 0)
  guest_query = local_guest;
 else
  return -EACCES;
 hypfs_dbfs_create_file(&dbfs_file_2fc);
 return 0;
}
