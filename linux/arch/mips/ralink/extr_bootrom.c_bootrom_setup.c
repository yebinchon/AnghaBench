
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bootrom_file_ops ;
 int debugfs_create_file (char*,int,int *,int *,int *) ;

__attribute__((used)) static int bootrom_setup(void)
{
 debugfs_create_file("bootrom", 0444, ((void*)0), ((void*)0), &bootrom_file_ops);
 return 0;
}
