
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int private_data; } ;


 int mtk_ppe_debugfs_foe_show ;
 int single_open (struct file*,int ,int ) ;

__attribute__((used)) static int mtk_ppe_debugfs_foe_open(struct inode *inode, struct file *file)
{
 return single_open(file, mtk_ppe_debugfs_foe_show, file->private_data);
}
