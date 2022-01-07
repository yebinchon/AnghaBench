
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhci_data {int open_mutex; } ;
typedef int __u8 ;


 int __vhci_create_device (struct vhci_data*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int vhci_create_device(struct vhci_data *data, __u8 opcode)
{
 int err;

 mutex_lock(&data->open_mutex);
 err = __vhci_create_device(data, opcode);
 mutex_unlock(&data->open_mutex);

 return err;
}
