
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_ERR (int *) ;
 int * debugfs_create_dir (char*,int *) ;
 int * vas_debugfs ;

void vas_init_dbgdir(void)
{
 static bool first_time = 1;

 if (!first_time)
  return;

 first_time = 0;
 vas_debugfs = debugfs_create_dir("vas", ((void*)0));
 if (IS_ERR(vas_debugfs))
  vas_debugfs = ((void*)0);
}
