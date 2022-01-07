
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char vq_callback_t ;
typedef int u32 ;
typedef char virtqueue ;
struct ports_device {int max_nr_ports; char** in_vqs; char** out_vqs; char* c_ivq; char* c_ovq; int vdev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 char* control_intr ;
 char* in_intr ;
 int kfree (char**) ;
 void* kmalloc_array (int,int,int ) ;
 char* out_intr ;
 scalar_t__ use_multiport (struct ports_device*) ;
 int virtio_find_vqs (int ,int,char**,char**,char const**,int *) ;

__attribute__((used)) static int init_vqs(struct ports_device *portdev)
{
 vq_callback_t **io_callbacks;
 char **io_names;
 struct virtqueue **vqs;
 u32 i, j, nr_ports, nr_queues;
 int err;

 nr_ports = portdev->max_nr_ports;
 nr_queues = use_multiport(portdev) ? (nr_ports + 1) * 2 : 2;

 vqs = kmalloc_array(nr_queues, sizeof(struct virtqueue *), GFP_KERNEL);
 io_callbacks = kmalloc_array(nr_queues, sizeof(vq_callback_t *),
         GFP_KERNEL);
 io_names = kmalloc_array(nr_queues, sizeof(char *), GFP_KERNEL);
 portdev->in_vqs = kmalloc_array(nr_ports, sizeof(struct virtqueue *),
     GFP_KERNEL);
 portdev->out_vqs = kmalloc_array(nr_ports, sizeof(struct virtqueue *),
      GFP_KERNEL);
 if (!vqs || !io_callbacks || !io_names || !portdev->in_vqs ||
     !portdev->out_vqs) {
  err = -ENOMEM;
  goto free;
 }






 j = 0;
 io_callbacks[j] = in_intr;
 io_callbacks[j + 1] = out_intr;
 io_names[j] = "input";
 io_names[j + 1] = "output";
 j += 2;

 if (use_multiport(portdev)) {
  io_callbacks[j] = control_intr;
  io_callbacks[j + 1] = ((void*)0);
  io_names[j] = "control-i";
  io_names[j + 1] = "control-o";

  for (i = 1; i < nr_ports; i++) {
   j += 2;
   io_callbacks[j] = in_intr;
   io_callbacks[j + 1] = out_intr;
   io_names[j] = "input";
   io_names[j + 1] = "output";
  }
 }

 err = virtio_find_vqs(portdev->vdev, nr_queues, vqs,
         io_callbacks,
         (const char **)io_names, ((void*)0));
 if (err)
  goto free;

 j = 0;
 portdev->in_vqs[0] = vqs[0];
 portdev->out_vqs[0] = vqs[1];
 j += 2;
 if (use_multiport(portdev)) {
  portdev->c_ivq = vqs[j];
  portdev->c_ovq = vqs[j + 1];

  for (i = 1; i < nr_ports; i++) {
   j += 2;
   portdev->in_vqs[i] = vqs[j];
   portdev->out_vqs[i] = vqs[j + 1];
  }
 }
 kfree(io_names);
 kfree(io_callbacks);
 kfree(vqs);

 return 0;

free:
 kfree(portdev->out_vqs);
 kfree(portdev->in_vqs);
 kfree(io_names);
 kfree(io_callbacks);
 kfree(vqs);

 return err;
}
