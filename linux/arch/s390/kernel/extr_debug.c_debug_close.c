
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {scalar_t__ private_data; } ;
struct TYPE_2__ {int debug_info_org; scalar_t__ debug_info_snap; } ;
typedef TYPE_1__ file_private_info_t ;


 int debug_info_free (scalar_t__) ;
 int debug_info_put (int ) ;
 int kfree (scalar_t__) ;

__attribute__((used)) static int debug_close(struct inode *inode, struct file *file)
{
 file_private_info_t *p_info;

 p_info = (file_private_info_t *) file->private_data;
 if (p_info->debug_info_snap)
  debug_info_free(p_info->debug_info_snap);
 debug_info_put(p_info->debug_info_org);
 kfree(file->private_data);
 return 0;
}
