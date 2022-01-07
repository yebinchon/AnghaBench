
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dtl {int cpu; int file; } ;


 int ENOMEM ;
 int debugfs_create_file (char*,int,int ,struct dtl*,int *) ;
 int dtl_dir ;
 int dtl_fops ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static int dtl_setup_file(struct dtl *dtl)
{
 char name[10];

 sprintf(name, "cpu-%d", dtl->cpu);

 dtl->file = debugfs_create_file(name, 0400, dtl_dir, dtl, &dtl_fops);
 if (!dtl->file)
  return -ENOMEM;

 return 0;
}
