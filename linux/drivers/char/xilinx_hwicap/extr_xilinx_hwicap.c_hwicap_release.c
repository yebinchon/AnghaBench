
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct inode {int dummy; } ;
struct hwicap_drvdata {int write_buffer_in_use; int sem; scalar_t__ is_open; scalar_t__* write_buffer; TYPE_1__* config; } ;
struct file {struct hwicap_drvdata* private_data; } ;
struct TYPE_2__ {int (* set_configuration ) (struct hwicap_drvdata*,int *,int) ;} ;


 int hwicap_command_desync (struct hwicap_drvdata*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct hwicap_drvdata*,int *,int) ;

__attribute__((used)) static int hwicap_release(struct inode *inode, struct file *file)
{
 struct hwicap_drvdata *drvdata = file->private_data;
 int i;
 int status = 0;

 mutex_lock(&drvdata->sem);

 if (drvdata->write_buffer_in_use) {

  for (i = drvdata->write_buffer_in_use; i < 4; i++)
   drvdata->write_buffer[i] = 0;

  status = drvdata->config->set_configuration(drvdata,
    (u32 *) drvdata->write_buffer, 1);
  if (status)
   goto error;
 }

 status = hwicap_command_desync(drvdata);
 if (status)
  goto error;

 error:
 drvdata->is_open = 0;
 mutex_unlock(&drvdata->sem);
 return status;
}
