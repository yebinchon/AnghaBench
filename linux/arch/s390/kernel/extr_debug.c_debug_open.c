
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_11__ {scalar_t__ dentry; } ;
struct file {TYPE_3__* private_data; TYPE_1__ f_path; } ;
struct TYPE_13__ {scalar_t__ act_entry_offset; int act_entry; scalar_t__ act_page; scalar_t__ act_area; TYPE_2__* view; TYPE_4__* debug_info_org; TYPE_4__* debug_info_snap; scalar_t__ offset; } ;
typedef TYPE_3__ file_private_info_t ;
struct TYPE_14__ {scalar_t__* debugfs_entries; TYPE_2__** views; } ;
typedef TYPE_4__ debug_info_t ;
struct TYPE_15__ {TYPE_4__* i_private; } ;
struct TYPE_12__ {int header_proc; int format_proc; } ;


 int ALL_AREAS ;
 int DEBUG_MAX_VIEWS ;
 int DEBUG_PROLOG_ENTRY ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NO_AREAS ;
 TYPE_4__* debug_info_copy (TYPE_4__*,int ) ;
 int debug_info_free (TYPE_4__*) ;
 int debug_info_get (TYPE_4__*) ;
 int debug_mutex ;
 TYPE_6__* file_inode (struct file*) ;
 TYPE_3__* kmalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nonseekable_open (struct inode*,struct file*) ;

__attribute__((used)) static int debug_open(struct inode *inode, struct file *file)
{
 debug_info_t *debug_info, *debug_info_snapshot;
 file_private_info_t *p_info;
 int i, rc = 0;

 mutex_lock(&debug_mutex);
 debug_info = file_inode(file)->i_private;

 for (i = 0; i < DEBUG_MAX_VIEWS; i++) {
  if (!debug_info->views[i])
   continue;
  else if (debug_info->debugfs_entries[i] == file->f_path.dentry)
   goto found;
 }

 rc = -EINVAL;
 goto out;

found:





 if (!debug_info->views[i]->format_proc && !debug_info->views[i]->header_proc)
  debug_info_snapshot = debug_info_copy(debug_info, NO_AREAS);
 else
  debug_info_snapshot = debug_info_copy(debug_info, ALL_AREAS);

 if (!debug_info_snapshot) {
  rc = -ENOMEM;
  goto out;
 }
 p_info = kmalloc(sizeof(file_private_info_t), GFP_KERNEL);
 if (!p_info) {
  debug_info_free(debug_info_snapshot);
  rc = -ENOMEM;
  goto out;
 }
 p_info->offset = 0;
 p_info->debug_info_snap = debug_info_snapshot;
 p_info->debug_info_org = debug_info;
 p_info->view = debug_info->views[i];
 p_info->act_area = 0;
 p_info->act_page = 0;
 p_info->act_entry = DEBUG_PROLOG_ENTRY;
 p_info->act_entry_offset = 0;
 file->private_data = p_info;
 debug_info_get(debug_info);
 nonseekable_open(inode, file);
out:
 mutex_unlock(&debug_mutex);
 return rc;
}
