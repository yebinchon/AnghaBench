
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {struct agp_file_private* private_data; } ;
struct agp_file_private {int my_pid; int access_flags; } ;
struct agp_controller {int dummy; } ;
struct TYPE_2__ {int agp_mutex; struct agp_controller* current_controller; } ;


 int AGP_FF_IS_CLIENT ;
 int AGP_FF_IS_CONTROLLER ;
 int DBG (char*,struct agp_file_private*) ;
 int agp_controller_release_current (struct agp_controller*,struct agp_file_private*) ;
 TYPE_1__ agp_fe ;
 struct agp_controller* agp_find_controller_by_pid (int ) ;
 int agp_remove_client (int ) ;
 int agp_remove_controller (struct agp_controller*) ;
 int agp_remove_file_private (struct agp_file_private*) ;
 int kfree (struct agp_file_private*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int agp_release(struct inode *inode, struct file *file)
{
 struct agp_file_private *priv = file->private_data;

 mutex_lock(&(agp_fe.agp_mutex));

 DBG("priv=%p", priv);

 if (test_bit(AGP_FF_IS_CONTROLLER, &priv->access_flags)) {
  struct agp_controller *controller;

  controller = agp_find_controller_by_pid(priv->my_pid);

  if (controller != ((void*)0)) {
   if (controller == agp_fe.current_controller)
    agp_controller_release_current(controller, priv);
   agp_remove_controller(controller);
   controller = ((void*)0);
  }
 }

 if (test_bit(AGP_FF_IS_CLIENT, &priv->access_flags))
  agp_remove_client(priv->my_pid);

 agp_remove_file_private(priv);
 kfree(priv);
 file->private_data = ((void*)0);
 mutex_unlock(&(agp_fe.agp_mutex));
 return 0;
}
