
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {TYPE_1__* i_sb; } ;
struct TYPE_2__ {scalar_t__ s_magic; } ;


 scalar_t__ BINDERFS_SUPER_MAGIC ;

bool is_binderfs_device(const struct inode *inode)
{
 if (inode->i_sb->s_magic == BINDERFS_SUPER_MAGIC)
  return 1;

 return 0;
}
