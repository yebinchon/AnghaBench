
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debugfs_create_dir (char*,int ) ;
 int debugfs_create_file (char*,int,int ,int *,int *) ;
 int dir ;
 int oct_ilm_ops ;
 int reset_statistics_ops ;

__attribute__((used)) static void init_debugfs(void)
{
 dir = debugfs_create_dir("oct_ilm", 0);
 debugfs_create_file("statistics", 0222, dir, ((void*)0), &oct_ilm_ops);
 debugfs_create_file("reset", 0222, dir, ((void*)0), &reset_statistics_ops);
}
