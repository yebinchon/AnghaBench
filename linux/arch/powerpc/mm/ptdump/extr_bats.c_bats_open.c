
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int CONFIG_PPC_BOOK3S_601 ;
 scalar_t__ IS_ENABLED (int ) ;
 int bats_show_601 ;
 int bats_show_603 ;
 int single_open (struct file*,int ,int *) ;

__attribute__((used)) static int bats_open(struct inode *inode, struct file *file)
{
 if (IS_ENABLED(CONFIG_PPC_BOOK3S_601))
  return single_open(file, bats_show_601, ((void*)0));

 return single_open(file, bats_show_603, ((void*)0));
}
