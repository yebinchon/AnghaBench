
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dbfs_d204_file ;
 int dbfs_file_d204 ;
 int debugfs_remove (int ) ;
 int diag204_free_buffer () ;
 int diag224_delete_name_table () ;
 int hypfs_dbfs_remove_file (int *) ;

void hypfs_diag_exit(void)
{
 debugfs_remove(dbfs_d204_file);
 diag224_delete_name_table();
 diag204_free_buffer();
 hypfs_dbfs_remove_file(&dbfs_file_d204);
}
