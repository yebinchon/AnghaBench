
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debugfs_create_file_unsafe (char*,int,int ,int *,int *) ;
 int eeh_addr_cache_fops ;
 int powerpc_debugfs_root ;

void eeh_cache_debugfs_init(void)
{
 debugfs_create_file_unsafe("eeh_address_cache", 0400,
   powerpc_debugfs_root, ((void*)0),
   &eeh_addr_cache_fops);
}
