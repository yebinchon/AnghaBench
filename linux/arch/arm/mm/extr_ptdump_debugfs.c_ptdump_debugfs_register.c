
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptdump_info {int dummy; } ;


 int debugfs_create_file (char const*,int,int *,struct ptdump_info*,int *) ;
 int ptdump_fops ;

void ptdump_debugfs_register(struct ptdump_info *info, const char *name)
{
 debugfs_create_file(name, 0400, ((void*)0), info, &ptdump_fops);
}
