
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debugfs_remove_recursive (int ) ;
 int punit_dbg_file ;

__attribute__((used)) static void punit_dbgfs_unregister(void)
{
 debugfs_remove_recursive(punit_dbg_file);
}
