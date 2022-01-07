
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int has_sprp; } ;


 int hypfs_dbfs_create_file (int *) ;
 int hypfs_sprp_file ;
 TYPE_1__ sclp ;

void hypfs_sprp_init(void)
{
 if (!sclp.has_sprp)
  return;
 hypfs_dbfs_create_file(&hypfs_sprp_file);
}
