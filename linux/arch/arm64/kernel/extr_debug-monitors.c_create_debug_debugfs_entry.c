
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debug_enabled ;
 int debugfs_create_bool (char*,int,int *,int *) ;

__attribute__((used)) static int create_debug_debugfs_entry(void)
{
 debugfs_create_bool("debug_enabled", 0644, ((void*)0), &debug_enabled);
 return 0;
}
