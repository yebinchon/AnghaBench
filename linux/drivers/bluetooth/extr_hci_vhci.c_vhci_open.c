
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhci_data {int open_timeout; int open_mutex; int read_wait; int readq; } ;
struct inode {int dummy; } ;
struct file {struct vhci_data* private_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int init_waitqueue_head (int *) ;
 struct vhci_data* kzalloc (int,int ) ;
 int msecs_to_jiffies (int) ;
 int mutex_init (int *) ;
 int nonseekable_open (struct inode*,struct file*) ;
 int schedule_delayed_work (int *,int ) ;
 int skb_queue_head_init (int *) ;
 int vhci_open_timeout ;

__attribute__((used)) static int vhci_open(struct inode *inode, struct file *file)
{
 struct vhci_data *data;

 data = kzalloc(sizeof(struct vhci_data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 skb_queue_head_init(&data->readq);
 init_waitqueue_head(&data->read_wait);

 mutex_init(&data->open_mutex);
 INIT_DELAYED_WORK(&data->open_timeout, vhci_open_timeout);

 file->private_data = data;
 nonseekable_open(inode, file);

 schedule_delayed_work(&data->open_timeout, msecs_to_jiffies(1000));

 return 0;
}
