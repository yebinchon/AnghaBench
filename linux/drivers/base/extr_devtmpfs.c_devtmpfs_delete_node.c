
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct req {int err; int done; struct req* next; struct device* dev; scalar_t__ mode; int name; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int device_get_devnode (struct device*,int *,int *,int *,char const**) ;
 int init_completion (int *) ;
 int kfree (char const*) ;
 int req_lock ;
 struct req* requests ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int thread ;
 int wait_for_completion (int *) ;
 int wake_up_process (int ) ;

int devtmpfs_delete_node(struct device *dev)
{
 const char *tmp = ((void*)0);
 struct req req;

 if (!thread)
  return 0;

 req.name = device_get_devnode(dev, ((void*)0), ((void*)0), ((void*)0), &tmp);
 if (!req.name)
  return -ENOMEM;

 req.mode = 0;
 req.dev = dev;

 init_completion(&req.done);

 spin_lock(&req_lock);
 req.next = requests;
 requests = &req;
 spin_unlock(&req_lock);

 wake_up_process(thread);
 wait_for_completion(&req.done);

 kfree(tmp);
 return req.err;
}
