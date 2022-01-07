
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {void* private_data; } ;
struct agp_file_private {int access_flags; int my_pid; } ;
struct agp_client {int dummy; } ;
struct TYPE_4__ {int agp_mutex; } ;
struct TYPE_3__ {int pid; } ;


 int AGPGART_MINOR ;
 int AGP_FF_ALLOW_CLIENT ;
 int AGP_FF_ALLOW_CONTROLLER ;
 int AGP_FF_IS_CLIENT ;
 int AGP_FF_IS_VALID ;
 int CAP_SYS_RAWIO ;
 int DBG (char*,struct agp_file_private*,struct agp_client*) ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 TYPE_2__ agp_fe ;
 struct agp_client* agp_find_client_by_pid (int ) ;
 int agp_insert_file_private (struct agp_file_private*) ;
 scalar_t__ capable (int ) ;
 TYPE_1__* current ;
 int iminor (struct inode*) ;
 struct agp_file_private* kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int agp_open(struct inode *inode, struct file *file)
{
 int minor = iminor(inode);
 struct agp_file_private *priv;
 struct agp_client *client;

 if (minor != AGPGART_MINOR)
  return -ENXIO;

 mutex_lock(&(agp_fe.agp_mutex));

 priv = kzalloc(sizeof(struct agp_file_private), GFP_KERNEL);
 if (priv == ((void*)0)) {
  mutex_unlock(&(agp_fe.agp_mutex));
  return -ENOMEM;
 }

 set_bit(AGP_FF_ALLOW_CLIENT, &priv->access_flags);
 priv->my_pid = current->pid;

 if (capable(CAP_SYS_RAWIO))

  set_bit(AGP_FF_ALLOW_CONTROLLER, &priv->access_flags);

 client = agp_find_client_by_pid(current->pid);

 if (client != ((void*)0)) {
  set_bit(AGP_FF_IS_CLIENT, &priv->access_flags);
  set_bit(AGP_FF_IS_VALID, &priv->access_flags);
 }
 file->private_data = (void *) priv;
 agp_insert_file_private(priv);
 DBG("private=%p, client=%p", priv, client);

 mutex_unlock(&(agp_fe.agp_mutex));

 return 0;
}
